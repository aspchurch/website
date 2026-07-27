---
layout: page
title: "Leadership"
#subtitle: "Meet our pastoral leadership"
description: "Meet Pastor Connor Underseth and the leadership team at All Saints Presbyterian Church in Carlsbad, North County. Biblical teaching and pastoral care."
permalink: /leadership/
---

{% for leader in site.data.leadership.leadership_team %}
## {{ leader.title }} – {{ leader.name }}

**Email:** [{{ leader.email }}](mailto:{{ leader.email }})

<img src="{{ '/assets/images/' | relative_url }}{{ leader.image }}"
     alt="{{ leader.image_alt }}"
     loading="lazy"
     style="max-width: 100%; height: auto; border-radius: 8px;"
     width="616"
     height="460">

{{ leader.bio }}

{% endfor %}

## Session

All Saints Presbyterian Church is a mission work of the Presbytery of Southern California of the Orthodox Presbyterian Church. The leadership team, known as the session, is lead by Rev. M. Connor Underseth as the organizing pastor, Rev. Jonathan Moersch, and Rev. Dr. Jason Vartanian.

<div markdown="1" style="display: flex; flex-wrap: wrap; gap: 2rem;">
{% for elder in site.data.leadership.session %}
<div markdown="1" style="flex: 1 1 280px; max-width: 340px;">

### {{ elder.title }} {{ elder.name }}

{% if elder.email and elder.email != "" %}**Email:** [{{ elder.email }}](mailto:{{ elder.email }})

{% endif %}
<div style="position: relative; width: 100%; padding-top: 125%; overflow: hidden; border-radius: 8px;">
<img src="{{ '/assets/images/' | relative_url }}{{ elder.image }}"
     alt="{{ elder.image_alt }}"
     loading="lazy"
     style="position: absolute; top: 0; left: 0; width: 100%; height: 100%; object-fit: cover; object-position: center;">
</div>

{{ elder.bio }}

</div>
{% endfor %}
</div>
