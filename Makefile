.PHONY: serve build install clean deploy production

# Run the site locally with live reload
serve:
	bundle exec jekyll serve --livereload

# Build the site for production (use before deployment)
build:
	JEKYLL_ENV=production bundle exec jekyll build

# Alias for production build
production: build
	@echo "✅ Production build complete! Files in _site/ are ready to deploy."
	@echo "📄 Sitemap available at: _site/sitemap.xml"

# Shorthand for production deployment
deploy: production
	@echo "🚀 Ready to deploy! Upload contents of _site/ folder."

# Build the site for development/testing
build-dev:
	bundle exec jekyll build

# Install dependencies
install:
	bundle install

# Clean build artifacts
clean:
	bundle exec jekyll clean

# Full setup (install + serve)
setup: install serve