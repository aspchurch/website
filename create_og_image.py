#!/usr/bin/env python3
"""
Create an optimized Open Graph image for social media sharing.
This script creates a 1200x630px image with the logo centered and zoomed.
"""

from PIL import Image, ImageDraw

# Open Graph recommended size
OG_WIDTH = 1200
OG_HEIGHT = 630

# Background color (white)
BG_COLOR = (255, 255, 255)

def create_og_image(logo_path, output_path, zoom=0.85):
    """
    Create an Open Graph image from the logo.
    
    Args:
        logo_path: Path to the source logo image
        output_path: Path where the OG image will be saved
        zoom: How much to zoom in (0.85 = use 85% of available space)
    """
    # Create a new image with OG dimensions
    og_image = Image.new('RGB', (OG_WIDTH, OG_HEIGHT), BG_COLOR)
    
    # Open the logo
    logo = Image.open(logo_path)
    
    # Calculate scaling to fit nicely in the OG image
    # Use zoom factor to determine how much space to use
    max_width = int(OG_WIDTH * zoom)
    max_height = int(OG_HEIGHT * zoom)
    
    # Calculate scale factor (maintain aspect ratio)
    width_ratio = max_width / logo.width
    height_ratio = max_height / logo.height
    scale = min(width_ratio, height_ratio)
    
    # Calculate new dimensions
    new_width = int(logo.width * scale)
    new_height = int(logo.height * scale)
    
    # Resize logo
    logo_resized = logo.resize((new_width, new_height), Image.Resampling.LANCZOS)
    
    # Calculate position to center the logo
    x = (OG_WIDTH - new_width) // 2
    y = (OG_HEIGHT - new_height) // 2
    
    # Paste logo onto OG image (handle transparency if present)
    if logo_resized.mode == 'RGBA':
        og_image.paste(logo_resized, (x, y), logo_resized)
    else:
        og_image.paste(logo_resized, (x, y))
    
    # Save the result
    og_image.save(output_path, 'PNG', optimize=True)
    print(f"Created Open Graph image: {output_path}")
    print(f"Dimensions: {OG_WIDTH}x{OG_HEIGHT}px")
    print(f"Logo scaled to: {new_width}x{new_height}px")

if __name__ == '__main__':
    import os
    
    # Paths
    assets_dir = 'assets/images'
    logo_path = os.path.join(assets_dir, 'logo.png')
    output_path = os.path.join(assets_dir, 'og-image.png')
    
    if not os.path.exists(logo_path):
        print(f"Error: Logo not found at {logo_path}")
        exit(1)
    
    # Create the OG image with 85% zoom (more zoomed in)
    create_og_image(logo_path, output_path, zoom=0.85)
    
    print(f"\nNext step: Update _layouts/default.html to use the new image")
    print(f"Change: '/assets/images/cross1.png' -> '/assets/images/og-image.png'")
