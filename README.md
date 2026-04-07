# All Saints Presbyterian Church Website

A Jekyll-based website for All Saints Presbyterian Church, hosted on GitHub Pages at [aspchurch.com](https://www.aspchurch.com).

## Quick Start

```bash
# Install dependencies (first time only)
bundle install

# Local development server with live reload
make serve
# Visit http://localhost:4000
```

---

## Content Editing Guide

**For non-technical editors:** All page content lives in `_data/` YAML files. Edit those files safely without touching any code.

### Safe to Edit — `_data/` Files

| File | What It Controls |
|------|-----------------|
| `_data/about.yml` | About page — story, what to expect |
| `_data/beliefs.yml` | What We Believe page |
| `_data/leadership.yml` | Leadership team names, bios, emails |
| `_data/vision.yml` | Vision & Values page |
| `_data/service.yml` | Service time, location, childcare info |
| `_data/giving.yml` | Give page — giving link and text |

### How to Edit on GitHub

1. Go to the repository on GitHub.com
2. Navigate to `_data/` → select the file to edit
3. Click the pencil icon ✏️
4. Make changes, add a commit message (e.g. "Update service times")
5. Click **Commit changes** — site updates in 2–3 minutes

### Common Edit Examples

**Service time** (`_data/service.yml`):
```yaml
service:
  time: "5:00 PM"
  location:
    address: "6600 Black Rail Rd, Carlsbad CA 92011"
```

**Pastor info** (`_data/leadership.yml`):
```yaml
leadership_team:
  - name: "Rev. M. Connor Underseth"
    title: "Planting Pastor"
    email: "connor@aspchurch.com"
    bio: |
      Biography text here...
```

**Giving link** (`_data/giving.yml`):
```yaml
online_giving:
  url: "https://your-giving-platform.com"
  button_text: "Give Online"
```

### Do Not Edit
- Files in `_layouts/` or ending in `.html`
- Lines starting with `{%`, `{{`, or `<`
- `_config.yml` (unless you know what you're doing)

---

## Development

### File Structure
```
├── _data/             # ✅ Page content (edit these)
├── _pages/            # Page templates (Markdown + YAML data)
├── _layouts/          # Site-wide HTML templates
├── _sass/             # Stylesheets
├── assets/            # Images, compiled CSS
├── _config.yml        # Site configuration
└── index.html         # Homepage
```

### Make Commands

```bash
make serve      # Local dev server (localhost:4000, live reload)
make build      # Production build → _site/
make deploy     # Production build with deployment notes
make install    # Install Ruby gems
make clean      # Remove _site/ build artifacts
```

### Performance Settings (`_config.yml`)

Most performance features are currently **disabled** for simpler local development. The exception is `enable_preload_optimization`, which remains on:

```yaml
performance:
  enable_service_worker: false     # Offline caching
  enable_css_cache_busting: false  # Cache-busted CSS filenames
  enable_image_optimization: false # Serve WebP images
  enable_preload_optimization: true  # Critical resource preloading (enabled)
```

To enable the remaining features for a production-optimized local build, set the first three to `true` and run `./optimize-images.sh` first.

---

## Deployment

The site deploys automatically when changes are pushed to `main`:

```bash
git add .
git commit -m "Your message"
git push origin main
# Live at aspchurch.com in ~2 minutes
```

### Sitemap & Search Console

The sitemap is auto-generated at `https://www.aspchurch.com/sitemap.xml`.

To submit or re-submit after major changes:
1. Go to [Google Search Console](https://search.google.com/search-console)
2. Select the `www.aspchurch.com` property
3. Navigate to **Sitemaps** → enter `sitemap.xml` → **Submit**

---

## TODO

### SEO & Visibility
- [ ] **Google Business Profile** — Add photos, post regular updates, respond to reviews, fill out Q&A section
- [ ] **Local citations** — Submit to PCA Church Finder (pcanet.org), Yelp, Apple Maps (Apple Business Connect), Facebook
- [ ] **Backlinks** — Request a link from the PCA presbytery directory; reach out to local Carlsbad community sites
- [ ] **Instagram handle** — Consider switching from `allsaintspresbyterianchurch` to `aspchurch` for consistency with the domain (see notes in conversation)
- [ ] **Update `sameAs` schema** — If Instagram handle or GBP URL changes, update in `_layouts/default.html`
- [ ] **Google Analytics** — Set up GA4 property and add tracking to the site

### Content
- [ ] **FAQ page** — "What is a Presbyterian church?", "What is Reformed theology?", "Do you have childcare?" — high SEO value
- [ ] **Sermon/blog section** — Weekly sermon summaries or devotionals; fresh content significantly helps SEO
- [ ] **Expand About page** — More church history detail and community involvement content
- [ ] **Events page** — Helps with `Event` schema and local search for one-time gatherings

### Technical
- [ ] **Service worker** — Enable in `_config.yml` once ready for offline/PWA support (`sw.js.production` → `sw.js`)
- [ ] **Image optimization** — Run `./optimize-images.sh` and enable `enable_image_optimization: true` in `_config.yml` for WebP delivery
- [ ] **Monitor Search Console** — Check for crawl errors, 404s, and Core Web Vitals issues periodically

---

*Last updated: April 2026*