#!/bin/bash

# Image optimization script for All Saints Presbyterian Church website
# Converts images to modern formats and optimizes them for web delivery

echo "🖼️  All Saints Presbyterian Church - Image Optimization"
echo "=================================================="

# Create optimized images directory
mkdir -p assets/images/optimized

# Check if we have imagemagick or similar tools
if command -v convert &> /dev/null; then
    echo "✅ ImageMagick found - converting to WebP format..."

    # Convert existing images to WebP with optimization
    if [ -f "assets/images/logo.png" ]; then
        convert assets/images/logo.png -quality 85 -define webp:lossless=false assets/images/optimized/logo.webp
        echo "   📄 logo.png → logo.webp"
    fi

    if [ -f "assets/images/family.png" ]; then
        convert assets/images/family.png -quality 80 -define webp:lossless=false assets/images/optimized/family.webp
        echo "   📄 family.png → family.webp"
    fi

    # Create different sizes for responsive images
    for img in assets/images/*.png assets/images/*.jpg; do
        if [ -f "$img" ]; then
            filename=$(basename "$img" | cut -d. -f1)

            # Create multiple sizes
            convert "$img" -resize 400x -quality 85 "assets/images/optimized/${filename}-400.webp" 2>/dev/null
            convert "$img" -resize 800x -quality 85 "assets/images/optimized/${filename}-800.webp" 2>/dev/null
            convert "$img" -resize 1200x -quality 85 "assets/images/optimized/${filename}-1200.webp" 2>/dev/null

            echo "   📐 Created responsive versions of $filename"
        fi
    done

else
    echo "⚠️  ImageMagick not found. Install with:"
    echo "   Ubuntu/Debian: sudo apt-get install imagemagick"
    echo "   macOS: brew install imagemagick"
    echo "   Windows: Download from https://imagemagick.org/script/download.php#windows"
fi

# Generate sizes for existing images (fallback method)
echo ""
echo "📏 Recommended image sizes:"
echo "   • Logo (logo.png): 40x40, 80x80, 120x120 (for different screen densities)"
echo "   • Family photo: 400x300, 600x450, 800x600 (responsive breakpoints)"
echo "   • Hero images: 800x400, 1200x600, 1600x800 (for different screen sizes)"

echo ""
echo "🎯 Optimization recommendations:"
echo "   • Use WebP format for 25-35% smaller file sizes"
echo "   • Implement lazy loading (already done ✅)"
echo "   • Add responsive images with srcset attribute"
echo "   • Compress images to 80-85% quality for web"

echo ""
echo "✅ Image optimization script completed!"
echo "   Next: Update HTML to use optimized images with fallbacks"