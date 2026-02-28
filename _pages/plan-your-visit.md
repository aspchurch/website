---
layout: page
title: "Plan Your Visit"
description: "Service time, location, childcare info, and directions for visiting All Saints Presbyterian Church in Carlsbad, CA."
permalink: /plan-your-visit/
---

# {{ site.data.service.service.title }}

{{ site.data.service.service.intro }}

## {{ site.data.service.service.time }}

At {{ site.data.service.service.location.name }}

**{{ site.data.service.service.location.address }}**

<p style="margin: 1.5rem 0;">
  <a href="https://www.google.com/maps/dir/?api=1&destination=6600+Black+Rail+Rd,+Carlsbad+CA+92011" target="_blank" rel="noopener noreferrer" class="btn btn-primary">Get Directions</a>
</p>

{% if site.data.service.childcare.available %}
## {{ site.data.service.childcare.title }}

{{ site.data.service.childcare.description }}
{% endif %}
