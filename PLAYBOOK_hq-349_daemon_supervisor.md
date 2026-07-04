# hq-349: Enable Daemon Supervisor in Container Entrypoint

## Problem
The Gas Town daemon (`gt daemon`) runs detached but is not supervised. If the daemon process dies (SIGKILL, OOM, panic), nothing automatically restarts it. Detection relies on manual patrol or agent noticing staleness, which causes extended downtime.

## Solution Implemented
Created a daemon supervisor that monitors daemon health and auto-restarts it if needed.

### Files Created
1. **`daemon-supervisor.sh`** - A wrapper script that:
   - Starts the daemon on boot
   - Runs a background loop checking daemon status every 10s
   - Automatically restarts the daemon if `gt daemon status` fails
   - Implements backoff (up to 5 consecutive failures before critical error)
   - Gracefully handles SIGTERM/SIGINT for clean shutdown
   - Logs to `/var/log/gastown/daemon-*.log`

2. **`docker-entrypoint.sh`** (modified) - Updated to:
   - Run all commands through the daemon supervisor
   - Ensures daemon supervision is active regardless of how the container starts

### Testing in Current Deployment
```bash
# Kill the daemon manually
pkill -f 'gt daemon'

# Wait ~10 seconds
sleep 10

# Check that it auto-restarted
gt daemon status
# Should show: RUNNING (or healthy status)

# Check supervisor logs
tail /var/log/gastown/daemon-restart.log
# Should show restart attempt

# Verify with daemon logs
gt daemon logs | tail -20
# Should show recent startup messages
```

## Next Steps: Permanent Fix (In Source Repo)

To commit this fix permanently, someone must:

### 1. Get the source files
```bash
cd <gastown-repo>
# The source repo is at anthropics/gas-town (or equivalent internal repo)
```

### 2. Copy daemon supervisor script
```bash
cp /app/daemon-supervisor.sh daemon-supervisor.sh
```

### 3. Update docker-entrypoint.sh
Update `docker-entrypoint.sh` to use the supervisor (matching `/app/docker-entrypoint.sh`)

### 4. Update Dockerfile
Add COPY directive:
```dockerfile
COPY --chown=agent:agent daemon-supervisor.sh /app/daemon-supervisor.sh
RUN chmod +x /app/daemon-supervisor.sh
```

### 5. Rebuild and deploy
```bash
make build  # builds the Docker image
# Push to container registry
# Redeploy pod with new image
```

## Verification After Deploy
After the pod redeploys with the new image:

```bash
# Check daemon status
gt daemon status

# Kill and verify auto-restart
pkill -f 'gt daemon' && sleep 12 && gt daemon status

# Check logs
cat /var/log/gastown/daemon-supervisor.log
cat /var/log/gastown/daemon-restart.log
```

## Monitoring
- Daemon supervisor logs to `/var/log/gastown/daemon-*.log`
- On 5 consecutive failures, the supervisor exits with code 1 (pod will restart)
- Supervisor gracefully handles pod shutdown signals

## Related Issues
- **hq-3ny**: The original outage that revealed this issue (19h downtime)
- **Upstream issue**: hq-m9m (beads binary JSONL export issue, separate)
