# 🚀 Performance Configuration Quick Guide

## Current Status: DEVELOPMENT MODE
All optimizations are **disabled** for easier development.

## 📋 Quick Toggle Checklist

### To Enable Production Optimizations:

1. **Edit `_config.yml`** and change these settings:
   ```yaml
   performance:
     enable_service_worker: true      # ← Change to true
     enable_css_cache_busting: true   # ← Change to true
     enable_image_optimization: true  # ← Change to true
   ```

2. **Restart Jekyll:**
   ```bash
   # Stop current server (Ctrl+C)
   bundle exec jekyll serve --livereload
   ```

3. **Optimize Images:**
   ```bash
   ./optimize-images.sh
   ```

## 🔍 What Each Setting Does

| Setting | Development | Production | Purpose |
|---------|-------------|------------|---------|
| `enable_service_worker` | `false` | `true` | Offline caching, faster repeat visits |
| `enable_css_cache_busting` | `false` | `true` | Forces browser to load updated CSS |
| `enable_image_optimization` | `false` | `true` | Uses WebP images, smaller file sizes |
| `enable_preload_optimization` | `true` | `true` | Always keep - loads critical resources first |

## ⚡ Expected Performance Gains (Production Mode)

- **Service Worker:** 50-80% faster repeat page loads
- **Cache Busting:** Ensures users see CSS updates immediately
- **Image Optimization:** 60-80% smaller image file sizes
- **Combined:** Google Lighthouse score improvement of 20-40 points

## 🐛 Troubleshooting

**Problem:** Changes not showing up?
- **Solution:** Restart Jekyll server after config changes

**Problem:** Images look the same?
- **Solution:** Run `./optimize-images.sh` after enabling image optimization

**Problem:** Service worker causing issues?
- **Solution:** Set `enable_service_worker: false` and restart

---
*Last Updated: October 2025*