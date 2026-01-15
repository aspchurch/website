# Development Guide# Development Guide



**Technical details for developers working on the All Saints Presbyterian Church website.****For All Saints Presbyterian Church Website**



## Development SetupTechnical documentation for developers working on the Jekyll site.



```bash---

# Install dependencies

bundle install## 🏗️ Architecture



# Development server with live reload### Current Tech Stack

bundle exec jekyll serve --livereload- **Framework**: Jekyll 4.2 static site generator

- **Styling**: Sass/SCSS with modular architecture

# Production build- **Hosting**: GitHub Pages with automated deployment

bundle exec jekyll build- **Build**: Ruby/Bundler dependency management

```

### File Organization

## Technical Architecture```

├── _sass/                   # Sass partials (modular styles)

### YAML-Driven Content System│   └── _beliefs.scss        # Beliefs page specific styles

All page content is stored in `_data/` YAML files and rendered via Liquid templates in `_pages/`. This provides:├── assets/css/

- Content editor safety (non-technical users can edit YAML)│   └── style.scss           # Main SCSS file (imports partials)

- Consistent data structure├── _layouts/                # Jekyll templates

- Template reusability├── _includes/               # Reusable components

- Validation possibilities├── _data/                   # YAML data files

└── doc/                     # Documentation

### Performance Configuration```

Development vs production settings controlled via `_config.yml`:

---

```yaml

performance:## 🎯 Development Phases

  enable_service_worker: false     # Development: false, Production: true

  enable_css_cache_busting: false  # Development: false, Production: true  ### ✅ Phase 1 Complete - Foundation Cleanup

  enable_image_optimization: false # Development: false, Production: true- Converted CSS to proper Sass architecture

```- Cleaned up unused files (`beliefs-content.html`, old `style.css`)

- Moved styles from inline includes to proper Sass partials

### Critical CSS- Created content editing documentation

Inline critical CSS in `_layouts/default.html` prevents flash of unstyled content (FOUC). Must include essential styles for above-the-fold content.- Organized documentation structure



### Production Deployment### ✅ Phase 2 Complete - Data & Components

1. Set all performance flags to `true` in `_config.yml`- ✅ Extracted beliefs content to `_data/beliefs.yml`

2. Run `./optimize-images.sh` for image compression- ✅ Created reusable Jekyll includes/components (`_includes/belief-section.html`)

3. Restore `sw.js.production` → `sw.js` for service worker- ✅ Implemented proper Sass organization with variables/mixins

4. Use `./build-optimized.sh` for minified builds- ✅ Modular Sass architecture with `_variables.scss`, `_mixins.scss`, `_base.scss`, `_layout.scss`



## File Structure### 🚀 Phase 3 Planned - Advanced Features

- Jekyll collections for staff/ministries/events

```- Automated content workflows and validation

├── _data/             # YAML content (edited by content team)- Advanced performance optimizations

├── _pages/            # Liquid templates (developers)- Enhanced content management features

├── _layouts/          # Site templates (developers)- Additional page templates and data structures

├── _sass/             # Modular SCSS (developers)

├── assets/            # Images and main CSS (developers)---

├── _config.yml        # Jekyll configuration (developers)

└── sw.js.production   # Service worker (disabled in dev)## 💻 Development Workflow

```

### Local Setup

## Development Notes```bash

# Install dependencies

- **Service worker disabled** during development to prevent caching issuesbundle install

- **No cache busting** in development for clean CSS loading

- **Image optimization disabled** for faster builds# Development server (with live reload)

- **Critical CSS** must be manually updated when styles changebundle exec jekyll serve --livereload

- **YAML validation** recommended before content deployment

# Production build

---bundle exec jekyll build



*For content editing instructions, see main README.md*# Clean build artifacts
bundle exec jekyll clean
```

### Making Changes

**Styling Changes:**
1. Edit Sass files in `_sass/` directory
2. Main imports in `assets/css/style.scss`
3. Jekyll automatically compiles to CSS

**Content Changes:**
1. Edit `.md` files directly
2. Maintain front matter structure
3. Use Jekyll/Liquid syntax for dynamic content

**Layout/Template Changes:**
1. Edit files in `_layouts/` and `_includes/`
2. Test across different page types
3. Ensure responsive design principles

---

## 🎨 Sass Architecture

### Current Structure
```scss
// assets/css/style.scss (main file)
---
---
/* Main styles... */
@import "beliefs";    // Imports _sass/_beliefs.scss
```

### Best Practices
- Use Sass partials (files starting with `_`)
- Organize by component/page when possible
- Maintain consistent naming conventions
- Use CSS custom properties for theming

### Planned Improvements
```scss
// Proposed structure for Phase 2
@import "variables";     // Colors, spacing, breakpoints
@import "mixins";        // Reusable mixins
@import "base";          // Reset, typography
@import "layout";        // Grid, containers
@import "components";    // Buttons, cards, etc.
@import "pages";         // Page-specific styles
```

---

## 📊 Performance Considerations

### Current Optimizations
- Sass compilation and minification
- Proper asset organization
- Jekyll's built-in optimizations

### Monitoring
- Page load times
- Lighthouse scores
- Core Web Vitals compliance

---

## 🔧 Build Process

### Jekyll Configuration
- **Config**: `_config.yml` contains site settings
- **Plugins**: Jekyll Feed, Sitemap generation
- **Markdown**: Kramdown processor with syntax highlighting

### Deployment
- **Auto-deploy**: GitHub Actions build and deploy
- **Branch**: `main` branch triggers deployment
- **URL**: https://aspchurch.github.io/website/

---

## 🐛 Troubleshooting

### Common Issues

**Sass Import Errors:**
- Ensure `_sass/` directory is at root level
- Check import paths in `style.scss`
- Verify Sass partial naming (`_filename.scss`)

**Build Failures:**
- Check Jekyll error messages
- Validate YAML front matter syntax
- Ensure all dependencies are installed

**Styling Not Applied:**
- Verify Sass compilation
- Check browser dev tools for CSS loading
- Clear browser cache for development

### Development Tips
- Use `bundle exec` prefix for Jekyll commands
- Enable live reload for faster development
- Test responsive design at different breakpoints
- Validate HTML and CSS regularly

---

## 📚 Resources

### Jekyll Documentation
- [Jekyll Docs](https://jekyllrb.com/docs/)
- [Sass Guidelines](https://sass-guidelin.es/)
- [GitHub Pages Documentation](https://docs.github.com/en/pages)

### Project-Specific
- [Content Editing Guide](CONTENT_EDITING.md)
- [Performance Report](PERFORMANCE_REPORT.md)
- Site improvements and recommendations in other doc files

---

*For content editing instructions, see [CONTENT_EDITING.md](CONTENT_EDITING.md)*