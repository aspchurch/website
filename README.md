# All Saints Presbyterian Church Website

A Jekyll-based website for All Saints Presbyterian Church, hosted on GitHub Pages at [aspchurch.com](https://www.aspchurch.com).

## Quick Start

```bash
# Install dependencies (first time only)
make install

# Local development server with live reload
make serve
# Visit http://localhost:4000
```

---

## Content Editing Guide

**For non-technical editors:** Most page content lives in `_data/` YAML files. Church contact info (phone, email, Instagram) lives in `_config.yml` under `church:`. Edit those files safely without touching any code.

### Safe to Edit — `_data/` Files

| File | What It Controls |
|------|-----------------|
| `_data/about.yml` | About page — story, what to expect |
| `_data/beliefs.yml` | What We Believe page |
| `_data/leadership.yml` | Leadership team names, bios, emails |
| `_data/vision.yml` | Vision & Values page |
| `_data/service.yml` | Service time, location, childcare info |
| `_data/giving.yml` | Give page — giving link and text |
| `_config.yml` (`church:` section) | Phone, email, Instagram, coordinates, Google Maps URL |
| `_config.yml` (`forms:` section) | Web3Forms access key for the visit form |

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
  start_time: "17:00:00"  ← Change start time here (24h HH:MM:SS)
  end_time: "18:15:00"    ← Change end time here
  location:
    address: "6600 Black Rail Rd, Carlsbad CA 92011"  ← Single-line display
    street: "6600 Black Rail Rd"  ← Keep in sync with address above
    city: "Carlsbad"
    state: "CA"
    zip: "92011"
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
- `_config.yml` — **except** the `church:` and `forms:` sections (contact info and the Web3Forms access key), which are safe to update

---

## Development

### File Structure
```
├── _data/             # ✅ Page content (edit these)
├── _pages/            # Page templates (Markdown + YAML data)
├── _layouts/          # Site-wide HTML templates
├── _sass/             # Partial stylesheets (imported into assets/css/style.scss)
├── assets/            # Images, CSS (assets/css/style.scss), JS
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

### Visit Form Setup (Web3Forms)

The "Let Us Know You're Coming" form on the Plan Your Visit page uses [Web3Forms](https://web3forms.com) — a free service that emails form submissions without needing a server (GitHub Pages can't run backend code).

**One-time setup:**

1. Go to [web3forms.com](https://web3forms.com) and enter the email address that should receive submissions. You'll get an Access Key by email.
2. Paste that key into `_config.yml` under `forms: web3forms_access_key:`.
3. Commit and push — submissions will now email to that address.

**To notify more than one person:** Web3Forms' free plan only delivers to a single email address (CC'ing multiple recipients is a paid feature). Instead, create a forwarding group with your email provider — e.g. a Google Workspace group `visits@aspchurch.com` that forwards to everyone who should see submissions — and use that group's address as the Web3Forms recipient. This keeps the recipient list editable in your email provider's admin console without touching the site.

The access key is public by design (it's visible in the page source) — Web3Forms rate-limits and honeypot-protects submissions on their end, so this is expected and not a secret to protect.

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

The sitemap is auto-generated at `https://www.aspchurch.com/sitemap.xml` (via the `jekyll-sitemap` plugin). Routine content edits don't need manual resubmission — Search Console already has the sitemap URL on file and recrawls it on its own schedule. Resubmitting is only useful the first time you register a sitemap, or to nudge a faster recrawl after a big structural change:
1. Go to [Google Search Console](https://search.google.com/search-console)
2. Select the `www.aspchurch.com` property
3. Navigate to **Sitemaps** → enter `sitemap.xml` → **Submit**

To pull a single updated page into Google's index faster than waiting on its normal crawl cadence, use **URL Inspection** → paste the page URL → **Request Indexing** instead.

**Excluding a page from the sitemap:** add `sitemap: false` to its front matter. Do this for any utility page that's also `robots: noindex` (e.g. `_pages/visit-thank-you.md`) — a `noindex` page listed in the sitemap shows up as a warning in Search Console.

---

## TODO

### SEO & Visibility
- [ ] **Google Business Profile** — Add photos, post regular updates, respond to reviews, fill out Q&A section
- [ ] **Local citations** — Submit to PCA Church Finder (pcanet.org), Yelp, Apple Maps (Apple Business Connect), Facebook
- [ ] **Backlinks** — Request a link from the PCA presbytery directory; reach out to local Carlsbad community sites
- [ ] **Instagram handle** — Consider switching from `allsaintspresbyterianchurch` to `aspchurch` for consistency with the domain; update `instagram` in `_config.yml` if changed
- [ ] **Update `sameAs` schema** — If GBP URL changes, update `google_maps_url` in `_config.yml`
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

*Last updated: August 2026*