# Phase 1 Implementation Plan: Typography, Colors & Basic Layout

*Baby steps to modernize the All Saints Presbyterian Church website*

## Overview
Phase 1 focuses on the foundational visual improvements that will have the biggest immediate impact: typography, color scheme, spacing, and basic layout enhancements.

## Baby Steps Checklist

### Step 1: Setup Google Fonts (15 minutes)
- [ ] Add Google Fonts link to `_layouts/default.html`
- [ ] Include `Inter` (body text) and `Playfair Display` (headings)
- [ ] Add font-display: swap for performance

### Step 2: Update CSS Variables for New Color System (20 minutes)
- [ ] Add CSS custom properties (variables) to top of `style.css`
- [ ] Define primary colors: navy (#1a365d), warm blue (#4299e1)
- [ ] Define secondary colors: gold (#f6ad55), cream (#fefcbf)
- [ ] Define neutral grays: #718096, #a0aec0, #edf2f7, #2d3748

### Step 3: Implement New Typography System (30 minutes)
- [ ] Update body font to Inter
- [ ] Set headings to use Playfair Display
- [ ] Create proper font-size scale (16px, 18px, 24px, 32px, 48px)
- [ ] Improve line-height values for better readability
- [ ] Set font-weights (400 regular, 500 medium, 600 semibold, 700 bold)

### Step 4: Reduce Uppercase Usage (15 minutes)
- [ ] Convert navigation menu from uppercase to sentence case
- [ ] Update hero title to use normal case with proper capitalization
- [ ] Keep only subtle uppercase for small accent elements
- [ ] Update letter-spacing values accordingly

### Step 5: Update Color Implementation (25 minutes)
- [ ] Replace old green (#6b8e5a) with new primary colors
- [ ] Update text colors from #333 to warmer #2d3748
- [ ] Apply new accent colors to links and buttons
- [ ] Update footer background color

### Step 6: Improve Spacing and Layout (30 minutes)
- [ ] Increase section padding from current values to more generous spacing
- [ ] Add consistent margin-bottom to elements
- [ ] Improve button padding and sizing
- [ ] Add proper container max-widths for better readability

### Step 7: Enhance Button Styles (20 minutes)
- [ ] Increase button size and padding
- [ ] Add subtle rounded corners (border-radius: 6px)
- [ ] Implement better hover states with smooth transitions
- [ ] Create primary vs secondary button variants

### Step 8: Logo and Image Sizing (15 minutes)
- [ ] Reduce main church logo from 300px to 200px max
- [ ] Adjust header logo size for better proportion
- [ ] Ensure images are responsive and properly sized

### Step 9: Basic Visual Hierarchy Improvements (20 minutes)
- [ ] Adjust heading sizes for better hierarchy
- [ ] Improve contrast between different text elements
- [ ] Add subtle spacing between sections
- [ ] Ensure proper heading tag usage (h1, h2, h3)

### Step 10: Cross-browser Testing and Mobile Check (15 minutes)
- [ ] Test on Chrome, Firefox, Safari
- [ ] Verify mobile responsiveness
- [ ] Check font loading and fallbacks
- [ ] Validate color contrast meets accessibility standards

## Detailed Implementation Notes

### Font Implementation Strategy
```css
/* Add to head of default.html */
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&family=Playfair+Display:wght@400;600;700&display=swap" rel="stylesheet">
```

### Color Variable Structure
```css
:root {
  /* Primary Colors */
  --color-primary: #1a365d;
  --color-primary-light: #4299e1;

  /* Secondary Colors */
  --color-accent: #f6ad55;
  --color-cream: #fefcbf;

  /* Neutrals */
  --color-text: #2d3748;
  --color-text-light: #718096;
  --color-background: #ffffff;
  --color-background-alt: #edf2f7;
}
```

### Typography Scale
- **Body**: 16px (1rem)
- **Small**: 14px (0.875rem)
- **Large**: 18px (1.125rem)
- **H3**: 24px (1.5rem)
- **H2**: 32px (2rem)
- **H1**: 48px (3rem)

## Success Criteria
After Phase 1, the website should have:
- ✅ Modern, readable typography
- ✅ Warm, professional color scheme
- ✅ Better spacing and visual breathing room
- ✅ Improved button and navigation styling
- ✅ Maintained responsiveness
- ✅ Better accessibility (contrast, fonts)

## Estimated Total Time
**3-4 hours** spread across the 10 baby steps above.

## Files to Modify
1. `_layouts/default.html` - Add Google Fonts
2. `assets/css/style.css` - All styling updates
3. Test on `index.html` and other pages

## Next Phase Preview
Phase 2 will focus on:
- Enhanced content sections
- Mobile navigation improvements
- Card-based layouts
- Modern design elements (shadows, etc.)