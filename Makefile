.PHONY: serve build install clean

# Run the site locally with live reload
serve:
	bundle exec jekyll serve --livereload

# Build the site
build:
	bundle exec jekyll build

# Install dependencies
install:
	bundle install

# Clean build artifacts
clean:
	bundle exec jekyll clean

# Full setup (install + serve)
setup: install serve