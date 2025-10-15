# Development Guide

**For All Saints Presbyterian Church Website**

Technical documentation for developers working on the Jekyll site.

---

## 🏗️ Architecture

### Current Tech Stack
- **Framework**: Jekyll 4.2 static site generator
- **Styling**: Sass/SCSS with modular architecture
- **Hosting**: GitHub Pages with automated deployment
- **Build**: Ruby/Bundler dependency management

### File Organization
```
├── _sass/                   # Sass partials (modular styles)
│   └── _beliefs.scss        # Beliefs page specific styles
├── assets/css/
│   └── style.scss           # Main SCSS file (imports partials)
├── _layouts/                # Jekyll templates
├── _includes/               # Reusable components
├── _data/                   # YAML data files
└── doc/                     # Documentation
```

---

## 🎯 Development Phases

### ✅ Phase 1 Complete - Foundation Cleanup
- Converted CSS to proper Sass architecture
- Cleaned up unused files (`beliefs-content.html`, old `style.css`)
- Moved styles from inline includes to proper Sass partials
- Created content editing documentation
- Organized documentation structure

### ✅ Phase 2 Complete - Data & Components
- ✅ Extracted beliefs content to `_data/beliefs.yml`
- ✅ Created reusable Jekyll includes/components (`_includes/belief-section.html`)
- ✅ Implemented proper Sass organization with variables/mixins
- ✅ Modular Sass architecture with `_variables.scss`, `_mixins.scss`, `_base.scss`, `_layout.scss`

### 🚀 Phase 3 Planned - Advanced Features
- Jekyll collections for staff/ministries/events
- Automated content workflows and validation
- Advanced performance optimizations
- Enhanced content management features
- Additional page templates and data structures

---

## 💻 Development Workflow

### Local Setup
```bash
# Install dependencies
bundle install

# Development server (with live reload)
bundle exec jekyll serve --livereload

# Production build
bundle exec jekyll build

# Clean build artifacts
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