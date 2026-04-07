---
layout: page
title: "Plan Your Visit"
description: "Service time, location, childcare info, and directions for visiting All Saints Presbyterian Church in Carlsbad, CA."
permalink: /plan-your-visit/
---

<script type="application/ld+json">
{
    "@context": "https://schema.org",
    "@type": "EventSeries",
    "name": "Sunday Worship Service",
    "description": "Weekly Sunday worship service at All Saints Presbyterian Church. Biblical preaching, reformed liturgy, and childcare for ages 1-6.",
    "eventSchedule": {
        "@type": "Schedule",
        "byDay": "https://schema.org/Sunday",
        "startTime": "{{ site.data.service.service.start_time }}",
        "endTime": "{{ site.data.service.service.end_time }}",
        "scheduleTimezone": "America/Los_Angeles",
        "repeatFrequency": "P1W"
    },
    "eventAttendanceMode": "https://schema.org/OfflineEventAttendanceMode",
    "eventStatus": "https://schema.org/EventScheduled",
    "location": {
        "@type": "Place",
        "name": "{{ site.data.service.service.location.name }}",
        "address": {
            "@type": "PostalAddress",
            "streetAddress": "{{ site.data.service.service.location.street }}",
            "addressLocality": "{{ site.data.service.service.location.city }}",
            "addressRegion": "{{ site.data.service.service.location.state }}",
            "postalCode": "{{ site.data.service.service.location.zip }}",
            "addressCountry": "US"
        }
    },
    "organizer": {
        "@type": "Church",
        "name": "{{ site.church.name }}",
        "url": "{{ site.url }}{{ site.baseurl }}"
    },
    "isAccessibleForFree": true
}
</script>

# {{ site.data.service.service.title }}

{{ site.data.service.service.intro }}

## {{ site.data.service.service.time }}

At {{ site.data.service.service.location.name }}

**{{ site.data.service.service.location.address }}**

<p style="margin: 1.5rem 0;">
  <a href="https://www.google.com/maps/dir/?api=1&destination={{ site.data.service.service.location.address | url_encode }}" target="_blank" rel="noopener noreferrer" class="btn btn-primary">Get Directions</a>
</p>

**Questions?** Email [{{ site.church.email }}](mailto:{{ site.church.email }}) or call [{{ site.church.phone }}](tel:{{ site.church.phone_e164 }}).

{% if site.data.service.childcare.available %}
## {{ site.data.service.childcare.title }}

{{ site.data.service.childcare.description }}
{% endif %}
