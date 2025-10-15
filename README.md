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

## 📋 Project Overview

**Jekyll 4.2** static site with **responsive design**, **Sass/SCSS** styling, and **GitHub Pages** deployment.

### Key Pages & Features
- `index.html` - Homepage with welcome message
- `what-we-believe.md` - Church doctrine with responsive 3-column layout
- `about.md` - Church information and history
- `leadership.md` - Staff and leadership team
- `meeting-time.md` - Service times and location
- `give.md` - Donation and giving information
- `vision-and-values.md` - Church mission and values

### File Structure
```
├── _layouts/           # Jekyll page templates
├── _includes/          # Reusable components
├── _sass/             # Modular Sass stylesheets
├── assets/css/        # Main SCSS file
├── doc/               # Documentation
└── *.md              # Content pages
```

## 🎯 Content Management

**For Content Editors:** See [Content Editing Guide](doc/CONTENT_EDITING.md) for safe editing instructions.

**For Developers:** See [Development Guide](doc/DEVELOPMENT.md) for technical details.

### Quick Guidelines
- Edit `.md` files for page content
- Maintain YAML front matter (the `---` sections)
- Use markdown formatting
- Avoid `_site/`, `_sass/`, `_layouts/` directories

## 🏗️ Current Status

### ✅ Phase 1 Complete - Foundation
- Sass architecture with modular organization (`_sass/_beliefs.scss`)
- Responsive 3-column layout for beliefs page
- Cleaned unused files and improved structure
- Comprehensive documentation created

### 🔄 Next - Phase 2 Planning
- Extract content to YAML data files (`_data/beliefs.yml`)
- Create reusable Jekyll includes/components
- Advanced Sass organization with variables/mixins
- Content templates and validation

## 💻 Development

### Commands
```bash
bundle exec jekyll serve --livereload  # Development
bundle exec jekyll build               # Production build
bundle exec jekyll clean               # Clean cache
```

### Sass Architecture
- **Main**: `assets/css/style.scss` (imports partials)
- **Partials**: `_sass/_beliefs.scss` (component styles)
- **Future**: Variables, mixins, and better organization

### Deployment
- **Auto-deploy**: Push to `main` branch
- **Hosting**: GitHub Pages
- **URL**: https://aspchurch.github.io/website/

---

📚 **Documentation**: [Content Editing](doc/CONTENT_EDITING.md) | [Development](doc/DEVELOPMENT.md)
