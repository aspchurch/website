---
layout: page
title: "About Us"
#subtitle: "Welcome to All Saints Presbyterian Church"
description: "Learn about our church plant in Carlsbad, North County San Diego. Reformed worship, biblical teaching, and community fellowship."
permalink: /about/
---

## {{ site.data.about.welcome.title }}

{{ site.data.about.welcome.content }}

---

## {{ site.data.about.church_story.title }}

{{ site.data.about.church_story.content }}

{% for commitment in site.data.about.church_story.commitments %}
- **{{ commitment.title }}** - {{ commitment.description }}
{% endfor %}

---

## {{ site.data.about.what_to_expect.title }}

### {{ site.data.about.what_to_expect.first_time_visitors.title }}
{% for item in site.data.about.what_to_expect.first_time_visitors.items %}
- **{{ item.title }}** - {{ item.description }}
{% endfor %}

### {{ site.data.about.what_to_expect.our_service.title }}
{% for detail in site.data.about.what_to_expect.our_service.details %}
- **{{ detail.label }}:** {{ detail.value }}
{% endfor %}