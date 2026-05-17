# blogs - SEO + GEO Remediation Playbook

**Target**: https://blogs.intelli-verse-x.ai
**Backing service**: aicart/intelli-verse-blog (image `intelliverse-blogs:latest`)
**Source repo (best guess)**: intelli-verse-x/intelli-verse-blog (WordPress)
**Audit reference**: `reports/blogs.md`
**Generated**: 2026-05-17T19:00:00Z

---

## 1. Executive summary

**WordPress site not fully configured**—empty `<title>` tag indicates fresh WordPress install without site identity setup. Missing all SEO essentials. Fix: configure WordPress site settings, install Yoast SEO or RankMath plugin, add XML sitemap, security headers. WordPress has built-in SEO tools—just needs configuration. Projected: 2/10 → 8/10 SEO/GEO with proper WordPress setup.

## 2-4. Remediation

### 1. Configure WordPress site identity

- **Priority**: P0 (CRITICAL) — 15 minutes
- **Where**: WordPress admin dashboard
- **How**:

```
1. Log in to WordPress admin: https://blogs.intelli-verse-x.ai/wp-admin
2. Go to Settings → General
3. Set "Site Title": "IntelliVerse X Blog | AI, Gaming & Tech Insights"
4. Set "Tagline": "Exploring AI, gaming, and technology innovation"
5. Save changes
```

### 2. Install SEO plugin (Yoast SEO or RankMath)

- **Priority**: P0 (CRITICAL) — 30 minutes
- **How**:

```
1. Go to Plugins → Add New
2. Search "Yoast SEO" or "Rank Math"
3. Install and activate
4. Run setup wizard:
   - Enable XML sitemap
   - Configure Open Graph
   - Set canonical URLs
   - Configure breadcrumbs
```

### 3. Enable XML sitemap

- **Priority**: P0 — 15 minutes
- **How**: Yoast/RankMath enable automatically, OR use WordPress core XML sitemaps (WP 5.5+)

```
Visit: https://blogs.intelli-verse-x.ai/sitemap.xml
Should show XML sitemap index
```

### 4. Add robots.txt via plugin or .htaccess

- **Priority**: P1 — 15 minutes
- **How**: Yoast/RankMath create virtual robots.txt, OR add physical file to web root

### 5. Add security headers via plugin

- **Priority**: P1 — 30 minutes
- **Plugin**: "Security Headers" or configure in Apache/nginx
- **Headers**: HSTS, X-Content-Type-Options, CSP, X-Frame-Options

### 6. Optimize for SEO

- **Priority**: P1 — ongoing
- **Tasks**:
  - Write keyword-rich blog posts (300+ words each)
  - Add images with alt text
  - Internal linking between posts
  - Categories and tags
  - FAQ schema via Yoast/RankMath
  - Author bios

## 5. Stack-aware notes

**WordPress**—mature SEO ecosystem. Use plugins rather than custom code. WordPress core has built-in sitemaps (WP 5.5+), but Yoast/RankMath add rich metadata, schema markup, and social media optimization.

## 6. Verification

```bash
# After setup:
curl -sS https://blogs.intelli-verse-x.ai | grep '<title>'
# Expected: "IntelliVerse X Blog..."

curl -sS https://blogs.intelli-verse-x.ai/sitemap.xml
# Expected: XML sitemap index

curl -sS https://blogs.intelli-verse-x.ai | grep 'og:title'
# Expected: Open Graph tags (if Yoast/RankMath installed)
```

## 7. Open questions

1. **Who has WordPress admin access?** Need credentials to configure.
2. **Hosting environment?** Self-hosted WP or managed (WP Engine, etc.)?
3. **Content strategy?** How often will blog posts be published?

## 8. Impact

2/10 → 8/10 SEO/GEO once WordPress is configured. Blog content drives long-term organic traffic—each post is an indexable page. Expect 50-200 visitors/month per 10 quality blog posts.
