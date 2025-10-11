#!/bin/bash

# Build and optimization script for All Saints Presbyterian Church website
# Performs Jekyll build with optimizations and asset processing

echo "🏗️  All Saints Presbyterian Church - Build & Optimization"
echo "======================================================="

# Clean previous builds
echo "🧹 Cleaning previous build..."
rm -rf _site/

# Run Jekyll build
echo "🚀 Building Jekyll site..."
if bundle exec jekyll build --config _config.yml; then
    echo "✅ Jekyll build completed successfully"
else
    echo "❌ Jekyll build failed"
    exit 1
fi

# Check if we have optimization tools available
echo "🔍 Checking for optimization tools..."

# CSS Minification (if csso is available)
if command -v csso &> /dev/null; then
    echo "📦 Minifying CSS with csso..."
    csso _site/assets/css/style.css --output _site/assets/css/style.min.css
    mv _site/assets/css/style.min.css _site/assets/css/style.css
    echo "✅ CSS minified"
else
    echo "⚠️  csso not found - CSS not minified"
    echo "   Install with: npm install -g csso-cli"
fi

# HTML Minification (if html-minifier is available)
if command -v html-minifier &> /dev/null; then
    echo "📦 Minifying HTML..."
    find _site -name "*.html" -type f -exec html-minifier \
        --collapse-whitespace \
        --remove-comments \
        --remove-redundant-attributes \
        --minify-css \
        --minify-js \
        {} \; -exec mv {} {}.min \; -exec mv {}.min {} \;
    echo "✅ HTML minified"
else
    echo "⚠️  html-minifier not found - HTML not minified"
    echo "   Install with: npm install -g html-minifier-terser"
fi

# Gzip compression for better delivery
echo "🗜️  Creating gzip versions for better compression..."
find _site -name "*.html" -o -name "*.css" -o -name "*.js" | while read file; do
    gzip -c "$file" > "$file.gz"
done
echo "✅ Gzip versions created"

# Generate performance report
echo "📊 Performance Analysis:"
echo "   Site size: $(du -sh _site | cut -f1)"
echo "   HTML files: $(find _site -name "*.html" | wc -l)"
echo "   CSS files: $(find _site -name "*.css" | wc -l)"
echo "   JS files: $(find _site -name "*.js" | wc -l)"
echo "   Image files: $(find _site -name "*.png" -o -name "*.jpg" -o -name "*.webp" | wc -l)"

echo ""
echo "🎯 Next Steps for Production:"
echo "   1. Enable gzip compression on your server"
echo "   2. Set proper cache headers for static assets"
echo "   3. Use a CDN for faster global delivery"
echo "   4. Monitor Core Web Vitals with Google PageSpeed Insights"

echo ""
echo "✅ Build and optimization completed!"
echo "   Your optimized site is ready in the _site/ directory"