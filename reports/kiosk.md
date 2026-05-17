# kiosk — SEO + GEO Audit

**Target**: https://kiosk.intelli-verse-x.ai  
**Audited**: 2026-05-17T17:41:12Z  
**HTTP**: 503 Service Unavailable

## SEO Findings
| Check | Result | Severity |
|---|---|---|
| Site Status | ✗ CRITICAL: Returns HTTP 503 "Backend service does not exist" | FAIL |
| All other checks | N/A — site not operational | N/A |

## GEO Findings

**AI-answerability**: FAIL — Site does not exist or is not deployed.

**LLM-friendliness score**: 0/10

**Why**: The subdomain returns HTTP 503 with the error message "Backend service does not exist". This indicates:
- The DNS record exists (resolves to awselb/2.0 load balancer)
- The backend service is either not deployed, misconfigured, or crashed
- No content is available to audit

## Recommended Actions

**Immediate (infrastructure fix required):**

1. **Deploy backend service** — The kiosk subdomain needs a backend service configured in the AWS ELB:
   - Check target group health in AWS ELB console
   - Verify backend service is running
   - Check service logs for crash/startup errors
   - Verify routing configuration

2. **DNS/Load Balancer Configuration** — Ensure:
   - Target group has healthy instances
   - Security groups allow traffic
   - Health check is properly configured
   - Backend service is listening on correct port

3. **Temporary solution** — If kiosk is not yet ready:
   - Return HTTP 503 with proper "Service Temporarily Unavailable" HTML page
   - Add Retry-After header
   - Or redirect to main site with explanation

**Once service is operational:**

4. Re-run this SEO+GEO audit to assess actual implementation.

**Expected outcome**: Service must be deployed before any SEO/GEO assessment is possible.
