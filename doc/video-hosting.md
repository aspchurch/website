# Video Hosting

How the two homepage videos are hosted, and why, for whoever touches this next.

---

## 1. Welcome video (YouTube)

A multi-minute conversation with the pastor. Source file was 646MB — far too
large to commit to the repo or serve from GitHub Pages (GitHub hard-blocks
pushes over 100MB per file, and Pages has no CDN/adaptive streaming for video
anyway). Hosted on YouTube instead and embedded via iframe.

### Channel setup

- Created as a **Brand Account** (not a personal channel) under the church's
  Google Workspace account, so channel ownership isn't tied to one person's
  personal login. Handle: `@aspchurch`.
- **Visibility: Unlisted**, not Private. Private videos only play for
  individually-invited Google accounts and would show "Video unavailable" to
  normal site visitors. Unlisted plays for anyone with the link/embed, no
  sign-in required, and doesn't show up in YouTube search or the channel page.
- **Team access**: Studio → Settings → Permissions → invite by email with a
  role (Owner / Manager / Editor / Viewer). Keep Owner to 1–2 people — add a
  second Owner for redundancy so the channel isn't a single point of failure
  tied to one person's account.
- Channel renames are rate-limited by YouTube ("too many changes, try again
  in 24 hours") — settle on the final name before saving.

### Embed

Config-driven so the section disappears if no video is set:

- `_config.yml`: `welcome_video.youtube_id` (the 11-character ID from the
  video's URL).
- `index.html`: renders an iframe pointed at `youtube-nocookie.com` (the
  privacy-enhanced embed domain) only `{% if site.welcome_video.youtube_id != "" %}`.
  Note: Liquid's `blank` keyword relies on ActiveSupport, which isn't loaded
  in plain Jekyll — use `!= ""`, not `!= blank`.
- Embed params: `rel=0` (limits end-of-video suggestions to the same channel)
  and `modestbranding=1` (minor/inconsistent effect on the logo, but free to
  set). The YouTube watermark and the "more videos" button are required
  embed chrome per YouTube's ToS — not removable.

---

## 2. Hero background video ("the Roller")

A short looping clip of people/congregation, played muted behind the hero
text. Self-hosted directly in the repo — unlike the welcome video, a short
silent loop compresses down to something small enough that YouTube/external
hosting isn't necessary.

### The size reduction (the interesting part)

The source `.mov` was 680MB for **30 seconds** of footage — almost the same
size as the entire multi-minute welcome video. Turned out to be Apple
**ProRes** (a professional editing/mezzanine codec, never meant for web
delivery) plus uncompressed PCM audio:

| | Source (ProRes) | Compressed (H.264 mp4) |
|---|---|---|
| Size | 680 MB | 11 MB |
| Bitrate | ~179 Mbps | ~3 Mbps |
| Duration | 30s | 30s |
| Audio | Uncompressed PCM | Stripped entirely (video is muted) |

That's a **~98% size reduction**, with no visible quality loss at the
resolution/scale a background video is actually viewed at. The lesson:
raw camera/editing-codec footage and a "web-ready" export can differ by
50-100x in size for identical-looking video — always check the codec
(`ffprobe`) before assuming a file needs "a little" compression.

### Compression command

```bash
# H.264 mp4 (primary, broadest browser support)
ffmpeg -i source.mov -an -vf "scale=1920:-2" \
  -c:v libx264 -preset slow -crf 26 -pix_fmt yuv420p \
  -movflags +faststart hero-roller.mp4

# VP9 webm (smaller/more efficient on supporting browsers)
ffmpeg -i source.mov -an -vf "scale=1920:-2" \
  -c:v libvpx-vp9 -crf 34 -b:v 0 -deadline good -cpu-used 2 \
  -pix_fmt yuv420p hero-roller.webm

# Poster frame (shown instantly before the video buffers)
ffmpeg -ss 1 -i hero-roller.mp4 -frames:v 1 -q:v 3 hero-roller-poster.jpg
```

`-an` strips audio (irrelevant — the video plays muted). `-crf` controls
quality/size trade-off (higher = smaller/more compressed); 26 for H.264 and
34 for VP9 held up fine for a background element sitting behind a dark
overlay and text.

### Files

- `assets/videos/hero-roller.mp4`, `assets/videos/hero-roller.webm`
- `assets/images/hero-roller-poster.jpg`
- Wired into `index.html`'s `.hero-section` as
  `<video autoplay muted loop playsinline poster="...">`, with a semi-
  transparent dark overlay (`.hero-bg-overlay`) added in `style.scss` so the
  white hero text stays legible over moving footage.
