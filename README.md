# All Saints Presbyterian Church Website

A modern Jekyll-based website for All Saints Presbyterian Church, built with responsive design and optimized for GitHub Pages hosting.

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
- `_pages/meeting-time.md` - Service times and location
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
3. **Available at:** `https://aspchurch.github.io/website/`

### Production Optimization
When ready for launch:
1. Set performance options to `true` in `_config.yml`
2. Run `./optimize-images.sh` to compress images
3. Run `./build-optimized.sh` for production build
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