# ai-chat-v2 - SEO + GEO Remediation Playbook

**Target**: https://ai-chat-v2.intelli-verse-x.ai
**Backing service**: aicart/intelliverse-ai-chatbot-v2 (image `ai-chatbot:v2_latest`)
**Source repo (best guess)**: intelli-verse-x/ai-chatbot (v2 branch)
**Audit reference**: `reports/ai-chat-v2.md`
**Generated**: 2026-05-17T18:55:00Z

---

## 1. Executive summary

**HTTP 404 - site not deployed or route misconfigured**. Same as products/gaming: DNS resolves, load balancer exists, but backend returns 404. Fix: deploy the application OR serve coming-soon page OR redirect to main site. See `remediation/products.md` for full 3-scenario playbook.

## 2-8. Remediation

**404 pattern**—see `remediation/products.md` for complete details.

### Scenario A: Deploy active AI chat application
1. Diagnose deployment (check k8s pods, logs, Ingress routing)
2. Add SEO metadata once deployed
3. Add robots.txt, sitemap.xml
4. Add JSON-LD (ChatBot / WebApplication schema)
5. Add security headers

### Scenario B: Coming soon page
Serve static "Coming Soon" HTML with noindex until app is ready.

### Scenario C: Redirect or remove DNS
If not in roadmap, redirect to main site or remove DNS record.

## Impact

0/10 → 7-8/10 SEO/GEO once deployed with proper metadata.
