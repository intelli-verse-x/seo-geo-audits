# ai-host — SEO + GEO Audit

**Target**: https://ai-host.intelli-verse-x.ai  
**Audited**: 2026-05-17T15:52:25Z  
**HTTP**: 426 Upgrade Required

## SEO Findings
| Check | Result | Severity |
|---|---|---|
| HTTP accessibility | ✗ CRITICAL: Returns HTTP 426 "Upgrade Required" — site requires WebSocket/protocol upgrade and is inaccessible to standard HTTP clients | FAIL |
| title tag | ✗ N/A — cannot audit, no HTML returned | FAIL |
| meta description | ✗ N/A — cannot audit, no HTML returned | FAIL |
| canonical | ✗ N/A — cannot audit, no HTML returned | FAIL |
| robots.txt | ✗ N/A — cannot audit, connection requires upgrade | FAIL |
| sitemap.xml | ✗ N/A — cannot audit, connection requires upgrade | FAIL |
| HSTS | ✗ N/A — no standard HTTP response headers | FAIL |
| Open Graph | ✗ N/A — cannot audit, no HTML returned | FAIL |
| Twitter Card | ✗ N/A — cannot audit, no HTML returned | FAIL |
| JSON-LD schema | ✗ N/A — cannot audit, no HTML returned | FAIL |
| h1 count | ✗ N/A — cannot audit, no HTML returned | FAIL |
| lang attribute | ✗ N/A — cannot audit, no HTML returned | FAIL |
| CSP | ✗ N/A — no standard HTTP response headers | FAIL |

## GEO Findings

**AI-answerability**: FAIL — An AI assistant asked "what is ai-host.intelli-verse-x.ai for?" could NOT answer from any publicly available information. The endpoint returns only "Upgrade Required" (HTTP 426) to standard HTTP requests, providing zero context, metadata, or content.

**LLM-friendliness score**: 0/10

**Why**: This site is **completely inaccessible** to search engine crawlers, AI indexing systems, and any client that doesn't establish a WebSocket or upgraded protocol connection. This is the worst possible configuration for SEO and GEO:

- ✗ No HTML document returned — just "Upgrade Required" text
- ✗ HTTP 426 status prevents crawling entirely
- ✗ No metadata (title, description, OG tags) accessible
- ✗ No semantic HTML, structured data, or content of any kind
- ✗ robots.txt and sitemap.xml also inaccessible
- ✗ Search engines (Google, Bing, etc.) will NOT index this site
- ✗ AI knowledge systems (ChatGPT, Perplexity, Claude, etc.) will have ZERO information about this service

**Architecture issue**: This appears to be a WebSocket-only or proprietary protocol service (possibly a real-time chat/streaming interface) that has no HTTP fallback or landing page. From an SEO/GEO perspective, this service **does not exist** on the public web.

**Top 3 fixes (ranked)**:

1. **Add an HTTP landing page** (CRITICAL) — Serve a standard HTML landing page on `https://ai-host.intelli-verse-x.ai/` that:
   - Explains what the service is
   - Provides feature descriptions, use cases, documentation links
   - Contains full SEO metadata (title, description, OG tags, JSON-LD)
   - Links to the WebSocket/app interface (e.g., "Launch App" button)
   - Returns HTTP 200, not 426

2. **Implement proper routing** — If this is meant to be an app-only interface, create a public marketing site at the root (`/`) and reserve WebSocket upgrade for app routes (`/app/*` or `/ws`). Standard web architecture:
   ```
   GET / → HTML landing page (HTTP 200)
   GET /app → WebSocket interface (HTTP 426 → WS upgrade)
   GET /robots.txt → robots.txt (HTTP 200)
   GET /sitemap.xml → sitemap.xml (HTTP 200)
   ```

3. **Add comprehensive SEO to the landing page** once created:
   - Title: "AI Host | [Service Description]"
   - Meta description explaining the service (~155 chars)
   - Open Graph + Twitter Card tags
   - JSON-LD WebApplication or SoftwareApplication schema
   - h1 with clear value proposition
   - Features section, FAQ, documentation links

## Recommended Actions (concrete patches)

**Immediate (Architecture Fix):**

1. **Separate public site from WebSocket app** — Modify server routing:

   **Option A: Nginx routing** (if using nginx)
   ```nginx
   server {
       listen 443 ssl http2;
       server_name ai-host.intelli-verse-x.ai;
       
       # Serve static marketing site at root
       location = / {
           root /var/www/ai-host-public;
           try_files /index.html =404;
       }
       
       # Serve SEO files
       location = /robots.txt {
           root /var/www/ai-host-public;
       }
       
       location = /sitemap.xml {
           root /var/www/ai-host-public;
       }
       
       # WebSocket app on /app or /ws
       location /app {
           proxy_pass http://websocket-backend;
           proxy_http_version 1.1;
           proxy_set_header Upgrade $http_upgrade;
           proxy_set_header Connection "upgrade";
       }
   }
   ```

   **Option B: Application-level routing**
   ```javascript
   // Express/Node example
   app.get('/', (req, res) => {
       res.sendFile('public/index.html'); // SEO-optimized landing page
   });
   
   app.get('/robots.txt', (req, res) => {
       res.sendFile('public/robots.txt');
   });
   
   // WebSocket upgrade only on /app route
   server.on('upgrade', (request, socket, head) => {
       if (request.url === '/app') {
           wss.handleUpgrade(request, socket, head, (ws) => {
               wss.emit('connection', ws, request);
           });
       } else {
           socket.destroy();
       }
   });
   ```

2. **Create public landing page** (`/var/www/ai-host-public/index.html` or equivalent):
   ```html
   <!DOCTYPE html>
   <html lang="en">
   <head>
       <meta charset="UTF-8">
       <meta name="viewport" content="width=device-width, initial-scale=1.0">
       <title>AI Host | Real-Time AI Assistant Platform</title>
       <meta name="description" content="AI Host provides real-time AI assistance through an advanced conversational interface. Connect instantly and get intelligent responses to your questions.">
       
       <link rel="canonical" href="https://ai-host.intelli-verse-x.ai/">
       
       <!-- Open Graph -->
       <meta property="og:title" content="AI Host | Real-Time AI Assistant Platform">
       <meta property="og:description" content="Real-time AI assistance through an advanced conversational interface.">
       <meta property="og:type" content="website">
       <meta property="og:url" content="https://ai-host.intelli-verse-x.ai/">
       
       <!-- Twitter Card -->
       <meta name="twitter:card" content="summary">
       <meta name="twitter:title" content="AI Host | Real-Time AI Assistant">
       <meta name="twitter:description" content="Real-time AI assistance platform.">
       
       <!-- JSON-LD -->
       <script type="application/ld+json">
       {
         "@context": "https://schema.org",
         "@type": "SoftwareApplication",
         "name": "AI Host",
         "applicationCategory": "CommunicationApplication",
         "offers": {
           "@type": "Offer",
           "price": "0"
         }
       }
       </script>
   </head>
   <body>
       <main>
           <h1>AI Host - Real-Time AI Assistant Platform</h1>
           <p>Connect with advanced AI assistance in real-time.</p>
           <a href="/app">Launch Application</a>
       </main>
   </body>
   </html>
   ```

3. **Add robots.txt**:
   ```
   User-agent: *
   Allow: /
   Disallow: /app
   Sitemap: https://ai-host.intelli-verse-x.ai/sitemap.xml
   ```

4. **Add sitemap.xml**:
   ```xml
   <?xml version="1.0" encoding="UTF-8"?>
   <urlset xmlns="http://www.sitemaps.org/schemas/sitemap/0.9">
     <url>
       <loc>https://ai-host.intelli-verse-x.ai/</loc>
       <changefreq>monthly</changefreq>
       <priority>1.0</priority>
     </url>
   </urlset>
   ```

**Long-term:**

5. **Build a proper marketing site** — The minimal landing page above is a stopgap. For full SEO/GEO value, create a multi-page marketing site with:
   - Features page
   - Use cases / examples
   - Documentation / API docs
   - FAQ with FAQPage schema
   - Pricing (if applicable)
   - Blog / resources

6. **Consider alternative architectures** — If the service is meant to be entirely app-based, consider:
   - Hybrid SSR + WebSocket app (Next.js, etc.)
   - Progressive enhancement: show content without WS, enhance with WS when available
   - At minimum, serve HTML shell with full metadata even if interactive features require upgrade

**Current Status**: This service is invisible to search engines and AI systems. Fix is urgent for any discoverability.
