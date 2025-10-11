# All Saints Presbyterian Church Website

A static Jekyll website for All Saints Presbyterian Church - a new church plant serving the coastal communities of North County San Diego.

## Setup

### Prerequisites
- Ruby 3.1+
- Bundler gem
- Git

### Local Development

1. **Clone and install dependencies:**
   ```bash
   git clone <repository-url>
   cd my.website
   bundle install
   ```

2. **Run locally:**
   ```bash
   make serve
   ```

   *Alternative: `bundle exec jekyll serve --livereload`*

3. **View site:**
   Open `http://localhost:4000/my.website/`

### Available Commands

- `make serve` - Run the site locally with live reload
- `make build` - Build the site for production
- `make install` - Install Ruby dependencies
- `make clean` - Clean build artifacts
- `make setup` - Install dependencies and run the site

### Project Structure

```
├── _config.yml          # Site configuration
├── _layouts/            # Page templates
├── assets/
│   ├── css/            # Stylesheets
│   └── images/         # Logo and images
├── *.md                # Content pages
├── index.html          # Homepage
└── Makefile            # Build commands
```

### Images Directory

Place your church logo and other images in this directory.

Expected files:
- `logo.png` - Church logo for the navigation
- `favicon.ico` - Website favicon (optional)

The logo should be approximately 200x200 pixels for best results.

## Deployment

### GitHub Pages

This site automatically deploys to GitHub Pages via GitHub Actions:

1. **Push to main branch:**
   ```bash
   git add .
   git commit -m "Update content"
   git push origin main
   ```

2. **Enable GitHub Pages:**
   - Go to repository Settings → Pages
   - Set source to "GitHub Actions"
   - Site will be available at: `https://munderseth.github.io/my.website/`

### Content Updates

**For non-technical users:**
- Edit `.md` files directly on GitHub.com
- Changes automatically deploy when saved
- Main content files:
  - `index.html` - Homepage
  - `leadership.md` - Leadership page
  - `what-we-believe.md` - Beliefs page
  - `vision-and-values.md` - Vision page
  - `meeting-time.md` - Service times
  - `give.md` - Giving information

## Technical Notes

- Built with Jekyll 4.2
- Mobile-responsive design
- Live reload for development
- Optimized for GitHub Pages hosting
