#!/usr/bin/env bash
# Gas Town daemon supervisor
# Monitors the gt daemon PID and restarts it if it dies.
# Runs in background, logs to /tmp/daemon-supervisor.log

set -euo pipefail

LOG_FILE="${LOG_FILE:-/tmp/daemon-supervisor.log}"
CHECK_INTERVAL="${DAEMON_CHECK_INTERVAL:-30}"
MAX_RESTART_ATTEMPTS="${MAX_RESTART_ATTEMPTS:-10}"
RESTART_WINDOW="${RESTART_WINDOW:-300}" # 5 minutes

log() {
    echo "[$(date -Iseconds)] $*" | tee -a "$LOG_FILE"
}

restart_count=0
restart_window_start=$(date +%s)

log "daemon supervisor starting (check_interval=${CHECK_INTERVAL}s)"

while true; do
    sleep "$CHECK_INTERVAL"

    # Check if daemon is running using gt's own status command
    if gt daemon status >/dev/null 2>&1; then
        # Daemon is healthy, reset restart counter if outside window
        now=$(date +%s)
        if [ $((now - restart_window_start)) -gt "$RESTART_WINDOW" ]; then
            restart_count=0
            restart_window_start=$now
        fi
        continue
    fi

    # Daemon is dead, attempt restart
    log "daemon is DOWN, attempting restart (attempt $((restart_count + 1)))"

    # Check restart throttle
    now=$(date +%s)
    if [ $((now - restart_window_start)) -gt "$RESTART_WINDOW" ]; then
        # Outside window, reset counter
        restart_count=0
        restart_window_start=$now
    fi

    restart_count=$((restart_count + 1))

    if [ "$restart_count" -gt "$MAX_RESTART_ATTEMPTS" ]; then
        log "ERROR: daemon crashed $restart_count times in ${RESTART_WINDOW}s, giving up"
        log "This likely indicates a persistent failure (config/resource issue)"
        log "Manual intervention required. Supervisor will continue monitoring but not restarting."

        # Send alert if Discord webhook available
        if [ -n "${DISCORD_WEBHOOK_URL:-}" ] && [ -x /opt/discord-notify/discord-post.sh ]; then
            jq -n '{
                username: "Gas Town Daemon Supervisor",
                embeds: [{
                    title: "🔴 CRITICAL: Daemon restart loop detected",
                    description: "Daemon crashed '"$restart_count"' times in '"$RESTART_WINDOW"'s. Supervisor stopped auto-restart. Manual intervention required.",
                    color: 15158332,
                    timestamp: (now | todate)
                }]
            }' | bash /opt/discord-notify/discord-post.sh 2>&1 | tee -a "$LOG_FILE" || true
        fi

        # Wait a long time before checking again (but don't exit - keep monitoring)
        sleep 3600
        continue
    fi

    # Attempt restart
    if gt daemon start 2>&1 | tee -a "$LOG_FILE"; then
        log "daemon restarted successfully"

        # Send notification if Discord webhook available
        if [ -n "${DISCORD_WEBHOOK_URL:-}" ] && [ -x /opt/discord-notify/discord-post.sh ]; then
            jq -n --arg count "$restart_count" '{
                username: "Gas Town Daemon Supervisor",
                embeds: [{
                    title: "⚠️ Daemon auto-restarted",
                    description: "Daemon was found dead and has been restarted automatically.",
                    color: 16776960,
                    fields: [
                        { name: "Restart count", value: $count, inline: true }
                    ],
                    timestamp: (now | todate),
                    footer: { text: "Supervisor will continue monitoring" }
                }]
            }' | bash /opt/discord-notify/discord-post.sh 2>&1 | tee -a "$LOG_FILE" || true
        fi
    else
        log "ERROR: daemon restart failed"
    fi
done
