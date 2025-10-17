---
layout: page
title: "Leadership"
subtitle: "Meet our pastoral leadership"
permalink: /leadership/
---

{% for leader in site.data.leadership.leadership_team %}
## {{ leader.title }} – {{ leader.name }}

**Email:** [{{ leader.email }}](mailto:{{ leader.email }})

<img src="../assets/images/{{ leader.image }}"
     alt="{{ leader.image_alt }}"
     loading="lazy"
     style="max-width: 100%; height: auto; border-radius: 8px;"
     width="600"
     height="400">

{{ leader.bio }}

{% endfor %}
