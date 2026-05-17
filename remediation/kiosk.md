# kiosk - SEO + GEO Remediation Playbook

**Target**: https://kiosk.intelli-verse-x.ai
**Backing service**: aicart/kiosk-frontend (no pod = 503)
**Source repo (best guess)**: intelli-verse-x/kiosk-frontend (verify)
**Audit reference**: `reports/kiosk.md`
**Generated**: 2026-05-17T18:55:00Z

---

## 1. Executive summary

**HTTP 503 "Backend service does not exist"**—k8s deployment likely scaled to 0 or never deployed. DNS and load balancer exist but no backend pods. Fix: scale up deployment OR deploy for first time OR redirect/remove if not needed. See `remediation/products.md` for 3-scenario approach.

## 2-8. Remediation

**503 pattern**—similar to 404 but backend explicitly missing.

### Immediate fix:
```bash
# Check if deployment exists
kubectl get deployment kiosk-frontend -n aicart

# If exists but scaled to 0:
kubectl scale deployment kiosk-frontend --replicas=1 -n aicart

# If doesn't exist, create deployment
# Or redirect/remove DNS if not needed
```

### Once deployed:
Follow same SEO steps as products/gaming (Scenario A): metadata, robots.txt, sitemap, schemas, security headers.

## Impact

0/10 → 7-8/10 SEO/GEO once backend is deployed and SEO metadata added.
