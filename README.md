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

## ⚙️ Performance Configuration

**IMPORTANT:** Control production optimizations via `_config.yml` settings:

```yaml
# Performance & Optimization Settings
performance:
  enable_service_worker: false     # Enables offline caching
  enable_css_cache_busting: false  # Adds timestamps to CSS files
  enable_image_optimization: false # Use optimized WebP images
  enable_preload_optimization: true # Keep critical resource preloading
```

### 🔧 Development vs Production Setup

#### **Development Mode (Current):**
```yaml
performance:
  enable_service_worker: false
  enable_css_cache_busting: false
  enable_image_optimization: false
```
**Benefits:** Clean loading, no caching conflicts, easier debugging

#### **Production Mode (For Launch):**
```yaml
performance:
  enable_service_worker: true
  enable_css_cache_busting: true
  enable_image_optimization: true
```
**Benefits:** Faster loading, offline support, optimized images

#### **How to Switch:**
1. Edit `_config.yml`
2. Change `false` → `true` for desired optimizations
3. Restart Jekyll: `bundle exec jekyll serve`
4. For image optimization, also run: `./optimize-images.sh`

---

## 📋 Project Overview

**Jekyll 4.2** static site with **responsive design**, **Sass/SCSS** styling, and **GitHub Pages** deployment.

### Key Pages & Features
- `index.html` - Homepage with welcome message
- `_pages/what-we-believe.md` - Church doctrine with responsive 3-column layout (YAML-driven)
- `_pages/about.md` - Church information and history
- `_pages/leadership.md` - Staff and leadership team
- `_pages/meeting-time.md` - Service times and location
- `_pages/give.md` - Donation and giving information
- `_pages/vision-and-values.md` - Church mission and values

### Performance Features (Configurable)
- **Service Worker** - Offline caching and faster repeat visits
- **CSS Cache Busting** - Forces fresh CSS on updates
- **Image Optimization** - WebP conversion and compression
- **Critical CSS** - Inline above-the-fold styles for instant loading
- **Resource Preloading** - Faster font and asset loading

### File Structure
```
├── _pages/            # All content pages (organized)
├── _data/             # YAML data files (beliefs content)
├── _layouts/          # Jekyll page templates
├── _sass/             # Modular Sass stylesheets
├── assets/css/        # Main SCSS file
├── doc/               # Documentation
└── index.html         # Homepage
```

## 🎯 Content Management

**For Content Editors:** See [Content Editing Guide](doc/CONTENT_EDITING.md) for safe editing instructions.

**For Developers:** See [Development Guide](doc/DEVELOPMENT.md) for technical details.

**For Performance:** See [Performance Guide](PERFORMANCE_GUIDE.md) for production optimization settings.

### Quick Guidelines
- Edit files in `_pages/` directory for page content
- Edit `_data/beliefs.yml` for church doctrine content
- Maintain YAML front matter (the `---` sections)
- Use markdown formatting
- Avoid `_site/`, `_sass/`, `_layouts/` directories

## 🏗️ Current Status

### ✅ Phase 1 Complete - Foundation
- Sass architecture with modular organization (`_sass/_beliefs.scss`)
- Responsive 3-column layout for beliefs page
- Cleaned unused files and improved structure
- Comprehensive documentation created

### ✅ Phase 2 Complete - Data & Components
- ✅ Extracted beliefs content to YAML data files (`_data/beliefs.yml`)
- ✅ Data-driven beliefs page with template-based rendering
- ✅ Organized pages into `_pages/` directory (Jekyll collections)
- ✅ Removed unused files and cleaned project structure
- ✅ Maintained working CSS architecture and responsive design

### 🧹 Recent Cleanup
- ✅ Moved all content pages to `_pages/` directory
- ✅ Removed unused `_includes/` files (welcome.md, responsive-image.html)
- ✅ Consolidated beliefs architecture from 3 files to 2
- ✅ Clean, organized project structure with no unused files

## 💻 Development

### Commands
```bash
bundle exec jekyll serve --livereload  # Development
bundle exec jekyll build               # Production build
bundle exec jekyll clean               # Clean cache
```

### Current Architecture
- **Main Stylesheet**: `assets/css/style.scss` with CSS custom properties
- **Beliefs Styles**: `_sass/_beliefs.scss` (responsive 3-column grid)
- **Data-Driven Content**: `_data/beliefs.yml` + template rendering
- **Organized Pages**: Jekyll collections in `_pages/` directory

### Deployment
- **Auto-deploy**: Push to `main` branch
- **Hosting**: GitHub Pages
- **URL**: https://aspchurch.github.io/website/

---

📚 **Documentation**: [Content Editing](doc/CONTENT_EDITING.md) | [Development](doc/DEVELOPMENT.md)
