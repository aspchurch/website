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

All performance features are currently **disabled** for simpler local development:

```yaml
performance:
  enable_service_worker: false     # Offline caching
  enable_css_cache_busting: false  # Cache-busted CSS filenames
  enable_image_optimization: false # Serve WebP images
  enable_preload_optimization: true
```

To enable for a production-optimized local build, set the first three to `true` and run `./optimize-images.sh` first.

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


## 🚀 Quick Start

```bash
# Clone and setup
git clone [repository-url]
cd website
bundle install

# Development server
bundle exec jekyll serve --livereload
# Visit http://localhost:4000
```

---

## 📝 Content Editing Guide

**For non-technical users:** This section helps you safely update website content without breaking the site.

### ✅ **SAFE TO EDIT - YAML Data Files (Recommended)**

**These files contain all the content and are the safest way to edit:**

| File | Purpose | What You Can Update |
|------|---------|-------------------|
| `_data/beliefs.yml` | Church doctrine | Belief statements, intro text |
| `_data/about.yml` | About page content | Welcome message, pastor bio, contact info |
| `_data/leadership.yml` | Leadership team | Pastor info, add new staff members |
| `_data/vision.yml` | Vision & values | Mission statements, church values |
| `_data/service.yml` | Service information | Service times, location, childcare info |
| `_data/giving.yml` | Giving page | Donation messages, giving platform URL |

### 📋 **How to Edit Content**

#### **Method 1: Edit on GitHub (Recommended)**
1. Go to your repository on GitHub.com
2. Navigate to `_data/` folder → select file to edit
3. Click the pencil icon (✏️) "Edit this file"
4. Make your changes (see examples below)
5. Add commit message like "Update service times"
6. Click "Commit changes"
7. Site updates automatically in 2-3 minutes

#### **YAML Editing Examples:**

**Update Service Times:** `_data/service.yml`
```yaml
service:
  time: "5:00 PM"                    ← Change time here
  location:
    address: "6600 Black Rail Rd..."  ← Update address
```

**Update Pastor Information:** `_data/leadership.yml`
```yaml
leadership_team:
  - name: "Rev. M. Connor Underseth"     ← Update name
    title: "Planting Pastor"             ← Update title
    email: "connor@aspchurch.com"        ← Update email
    bio: |                               ← Update biography
      Your pastor's biography here...
```

**Update Beliefs:** `_data/beliefs.yml`
```yaml
beliefs:
  - title: "The Bible"                 ← Update title
    content: |                         ← Update content
      Our belief about Scripture...
```

**Update Giving Information:** `_data/giving.yml`
```yaml
online_giving:
  url: "https://your-giving-platform.com"  ← Update giving link
  button_text: "Give Online Here"          ← Update button text
```

### ❌ **DO NOT EDIT** - These can break the site:
- Files ending in `.html` or in `_layouts/` folder
- Lines starting with `{%` or `{{` (Jekyll code)
- Lines starting with `<` (HTML tags)
- `_config.yml` file

---

## ⚙️ Performance Configuration

**Control production optimizations via `_config.yml` settings:**

### 🔧 Development Mode (Current)
```yaml
performance:
  enable_service_worker: false     # No caching - good for development
  enable_css_cache_busting: false  # Clean CSS loading
  enable_image_optimization: false # Use original images
```
**Benefits:** Clean loading, no caching conflicts, easier debugging

### 🚀 Production Mode (For Launch)
```yaml
performance:
  enable_service_worker: true      # Offline caching
  enable_css_cache_busting: true   # Force fresh CSS updates
  enable_image_optimization: true  # Optimize images
```
**Benefits:** Faster loading, offline support, optimized images

**To Switch:** Edit `_config.yml`, restart Jekyll, run `./optimize-images.sh` for images

---

## 📋 Technical Overview

### Architecture
- **Jekyll 4.2** static site generator
- **YAML-driven content** for safe editing
- **Responsive design** with CSS Grid
- **GitHub Pages** deployment
- **Sass/SCSS** modular styling

### Key Pages (All YAML-Driven)
- `index.html` - Homepage with hero section
- `_pages/beliefs.md` - Church doctrine (3-column responsive layout)
- `_pages/about.md` - Church info and pastor details
- `_pages/leadership.md` - Leadership team
- `_pages/plan-your-visit.md` - Service times and location
- `_pages/give.md` - Donation and giving information
- `_pages/vision-and-values.md` - Church mission and values

### File Structure
```
├── _data/             # YAML content files (EDIT THESE)
│   ├── beliefs.yml    # Church doctrine content
│   ├── about.yml      # About page and pastor info
│   ├── leadership.yml # Leadership team info
│   ├── vision.yml     # Vision and values content
│   ├── service.yml    # Service times and location
│   └── giving.yml     # Giving information
├── _pages/            # Page templates (uses YAML data)
├── _layouts/          # Site templates
├── _sass/             # Modular stylesheets
├── assets/            # Images and main CSS
└── index.html         # Homepage
```

### Performance Features
- **Critical CSS** - Inline above-the-fold styles for instant loading
- **Resource Preloading** - Faster font and asset loading
- **Service Worker** - Offline caching (disabled in development)
- **Image Optimization** - WebP conversion and compression
- **CSS Cache Busting** - Forces fresh CSS on updates

## 🚀 Deployment

### GitHub Pages (Automatic)
1. **Push to main branch:**
   ```bash
   git add .
   git commit -m "Update content"
   git push origin main
   ```
2. **Site updates automatically** in 2-3 minutes
3. **Available at:** `https://www.aspchurch.com`

### Production Build (For Manual Deployment or Sitemap)

**Quick Command:**
```bash
make deploy
```

This generates a production build with:
- ✅ Correct sitemap URLs (`https://www.aspchurch.com`)
- ✅ Proper canonical links
- ✅ Production-optimized assets
- ✅ Files ready in `_site/` folder

**Sitemap Location:** `_site/sitemap.xml`

**Uploading Sitemap to Google Search Console:**
1. Run `make deploy` to generate production build
2. Go to [Google Search Console](https://search.google.com/search-console)
3. Select your property (www.aspchurch.com)
4. Navigate to **Sitemaps** in the left menu
5. Enter `sitemap.xml` and click **Submit**
6. Google will process it within 1-2 days

**Alternative Commands:**
```bash
make build         # Production build
make production    # Same as make build
make build-dev     # Development build (localhost URLs)
```

### Production Optimization (Optional)
For maximum performance:
1. Set performance options to `true` in `_config.yml`
2. Run `./optimize-images.sh` to compress images
3. Run `./build-optimized.sh` for optimized build
4. Restore `sw.js.production` → `sw.js` for offline caching

---

## 🏗️ Development Status

### ✅ Completed Features
- **Phase 1:** Jekyll foundation with responsive design
- **Phase 2:** YAML-driven content architecture
- **Phase 3:** Complete content editor safety
- **Performance:** Configurable optimization system
- **Documentation:** Consolidated content editing guide

### Current Configuration
- **Development mode** - No caching, clean loading
- **YAML-driven content** - All pages use structured data
- **Content-editor safe** - Non-technical users can edit `_data/` files
- **Service worker disabled** - Prevents caching confusion during development

---

*Last Updated: October 2025*