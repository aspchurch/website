---
layout: page
title: "Plan Your Visit"
description: "Service time, location, childcare info, and directions for visiting All Saints Presbyterian Church in Carlsbad, CA."
permalink: /plan-your-visit/
---

<script type="application/ld+json">
{
    "@context": "https://schema.org",
    "@type": "Event",
    "name": "Sunday Worship Service",
    "description": "Weekly Sunday worship service at All Saints Presbyterian Church. Biblical preaching, reformed liturgy, and childcare for ages 1-6.",
    "startDate": "2025-03-01T17:00:00-07:00",
    "endDate": "2025-03-01T18:15:00-07:00",
    "eventSchedule": {
        "@type": "Schedule",
        "byDay": "https://schema.org/Sunday",
        "startTime": "17:00:00",
        "endTime": "18:15:00",
        "scheduleTimezone": "America/Los_Angeles",
        "repeatFrequency": "P1W"
    },
    "eventAttendanceMode": "https://schema.org/OfflineEventAttendanceMode",
    "eventStatus": "https://schema.org/EventScheduled",
    "location": {
        "@type": "Place",
        "name": "Redeemer By The Sea Lutheran Church",
        "address": {
            "@type": "PostalAddress",
            "streetAddress": "6600 Black Rail Rd",
            "addressLocality": "Carlsbad",
            "addressRegion": "CA",
            "postalCode": "92011",
            "addressCountry": "US"
        }
    },
    "organizer": {
        "@type": "Church",
        "name": "All Saints Presbyterian Church",
        "url": "https://www.aspchurch.com"
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

**Questions?** Email [info@aspchurch.com](mailto:info@aspchurch.com) or call [(760) 385-8296](tel:+17603858296).

{% if site.data.service.childcare.available %}
## {{ site.data.service.childcare.title }}

{{ site.data.service.childcare.description }}
{% endif %}
