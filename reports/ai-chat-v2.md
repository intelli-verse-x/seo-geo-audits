# ai-chat-v2 — SEO + GEO Audit

**Target**: https://ai-chat-v2.intelli-verse-x.ai  
**Audited**: 2026-05-17T17:41:15Z  
**HTTP**: 404 Not Found

## SEO Findings
| Check | Result | Severity |
|---|---|---|
| Site Status | ✗ CRITICAL: Returns HTTP 404 with empty response body | FAIL |
| All other checks | N/A — site not operational | N/A |

## GEO Findings

**AI-answerability**: FAIL — Site returns 404 Not Found.

**LLM-friendliness score**: 0/10

**Why**: The subdomain returns HTTP 404 with zero content. This indicates:
- The DNS record exists (resolves to awselb/2.0 load balancer)
- The backend service is either not deployed, or the route is not configured
- No content is available to audit

## Recommended Actions

**Immediate (infrastructure fix required):**

1. **Deploy backend service or configure routing** — The ai-chat-v2 subdomain needs:
   - Backend service deployed to handle requests
   - Proper routing configuration in load balancer
   - Or redirect rule if this version is deprecated

2. **If v2 is deprecated** — Consider:
   - 301 redirect to current chat version (if v3/v4 exists)
   - Or redirect to main site
   - Add explanation page rather than empty 404

3. **If v2 is under development** — Return:
   - Proper "Coming Soon" page with HTTP 503 (not 404)
   - Retry-After header
   - Link back to main site

**Once service is operational:**

4. Re-run this SEO+GEO audit to assess actual implementation.

**Expected outcome**: Service must be deployed before any SEO/GEO assessment is possible.
