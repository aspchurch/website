---
layout: page
title: "About Us"
subtitle: "Welcome to All Saints Presbyterian Church"
description: "Learn about our church plant in Carlsbad, North County San Diego. Reformed worship, biblical teaching, and community fellowship."
permalink: /about/
---

## {{ site.data.about.welcome.title }}

{{ site.data.about.welcome.content }}

---

## {{ site.data.about.pastor.title }}

### {{ site.data.about.pastor.name }} - {{ site.data.about.pastor.role }}

<img src="../assets/images/{{ site.data.about.pastor.image }}"
     alt="{{ site.data.about.pastor.image_alt }}"
     loading="lazy"
     style="max-width: 100%; height: auto; border-radius: 8px; margin: 1rem 0;"
     width="600"
     height="400">

{{ site.data.about.pastor.bio }}

**Email:** [{{ site.data.about.pastor.email }}](mailto:{{ site.data.about.pastor.email }})

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

---

## {{ site.data.about.get_connected.title }}

{{ site.data.about.get_connected.intro }}

{% for way in site.data.about.get_connected.ways_to_connect %}
**{{ way.title }}**
{{ way.content }}

{% endfor %}

---

*{{ site.data.about.closing_message }}*