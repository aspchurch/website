# Content Review — Open Items

Two items from a July 2026 site review that need a decision, not just a fix.
Unlike the code/SEO/perf cleanup (meta tags, dead CSS, unused fonts, image
compression — already done), these change what visitors see and read, so
they're captured here for discussion before anyone implements them.

---

## 1. Overlapping content across About / Vision & Values / Beliefs

The site currently makes the same core claims — Reformed, confessional
(Westminster Confession), gospel-mission-focused — in three separate places:

- **About** (`_data/about.yml`) → "What to Expect" list includes "Reformed
  Worship: Historic Christian liturgy and practice" and "Gospel Mission:
  Sharing Christ's love in North County"
- **Vision & Values** (`_data/vision.yml`) → "Authentic Worship" says
  "grounded in the rich tradition of historic Christianity and Presbyterian
  liturgy," and "Mission Driven" restates the same gospel-mission point
- **Beliefs** (`_data/beliefs.yml`) and Vision & Values' "Confessional"
  section both independently explain the Westminster Confession commitment

A first-time visitor has to read "we're Reformed / confessional /
gospel-focused" three times across three page loads to get the full
picture. For a small church-plant site aiming for "simple and minimal,"
that's a lot of redundancy and an extra nav item (6 top-level pages).

**Options to weigh:**
- Fold Vision & Values into About as sections on one page (cuts nav to 5
  items, removes the most repetitive page)
- Keep both pages but rewrite so each says something the other doesn't
  (About = practical/what-to-expect, Vision & Values = the "why")
- Leave as-is if the redundancy is intentional (e.g., SEO surface area, or
  visitors landing on any one page should get the full pitch without
  clicking around)

**Decision needed:** which page(s) to merge/rewrite, and who owns the
content pass (the actual sentence-level rewriting is a judgment call about
voice, not a mechanical fix).

---

## 2. Homepage has two video moments

`index.html`'s hero section has an autoplay, looping, muted background
video, and immediately below it a second click-to-play "A Word From Our
Pastor" video with a full custom player (play/pause, scrubber, mute,
fullscreen — see `doc/video-hosting.md` for how both are hosted/compressed).

Both are well-engineered individually, but together they're a lot of motion
for a landing page meant to feel simple and minimal — the visitor hits
moving background footage, then is immediately asked to consider playing a
second video before reaching any text about the church itself.

**Options to weigh:**
- Keep both (current state) — motion signals a living, active congregation
- Drop the autoplay hero video in favor of a static photo; keep the pastor
  welcome video as the site's one video moment
- Drop the pastor welcome video from the homepage specifically (link to it
  from About or Plan Your Visit instead) and keep the hero video as the
  sole homepage media

**Decision needed:** which single "video moment" (if any) the homepage
should lead with.
