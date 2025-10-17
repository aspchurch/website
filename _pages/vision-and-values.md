---
layout: page
title: "Vision and Values"
subtitle: "Our mission and the principles that guide our church"
permalink: /vision-and-values/
---

## {{ site.data.vision.vision.title }}

### {{ site.data.vision.vision.subtitle }}

{% for section in site.data.vision.vision.sections %}
#### {{ section.title }}

{{ section.content }}

{% endfor %}

## {{ site.data.vision.values.title }}

### {{ site.data.vision.values.subtitle }}

{% for section in site.data.vision.values.sections %}
#### {{ section.title }}

{{ section.content }}

{% endfor %}