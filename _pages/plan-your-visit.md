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
        "startTime": {{ site.data.service.service.start_time | jsonify }},
        "endTime": {{ site.data.service.service.end_time | jsonify }},
        "scheduleTimezone": "America/Los_Angeles",
        "repeatFrequency": "P1W"
    },
    "eventAttendanceMode": "https://schema.org/OfflineEventAttendanceMode",
    "eventStatus": "https://schema.org/EventScheduled",
    "location": {
        "@type": "Place",
        "name": {{ site.data.service.service.location.name | jsonify }},
        "address": {
            "@type": "PostalAddress",
            "streetAddress": {{ site.data.service.service.location.street | jsonify }},
            "addressLocality": {{ site.data.service.service.location.city | jsonify }},
            "addressRegion": {{ site.data.service.service.location.state | jsonify }},
            "postalCode": {{ site.data.service.service.location.zip | jsonify }},
            "addressCountry": "US"
        }
    },
    "organizer": {
        "@type": "Organization",
        "name": {{ site.church.name | jsonify }},
        "url": {{ site.url | append: site.baseurl | jsonify }}
    },
    "isAccessibleForFree": true
}
</script>

# {{ site.data.service.service.title }}

{{ site.data.service.service.intro }}

{% assign _display_time = "2000-01-01 " | append: site.data.service.service.start_time | date: "%-I:%M %p" %}
## {{ _display_time }}

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

<section class="visit-form-section" id="lets-know">
  <h2>Let Us Know You're Coming</h2>
  <p>Planning to join us this Sunday? Fill out the form below and we'll be looking for you.</p>

  <form class="visit-form" id="visit-form" action="https://api.web3forms.com/submit" method="POST" data-fallback-email="{{ site.church.email }}">
    <input type="hidden" name="access_key" value="{{ site.forms.web3forms_access_key }}">
    <input type="hidden" name="subject" value="New Plan Your Visit submission">
    <input type="hidden" name="from_name" value="{{ site.church.name }} Website">
    <input type="hidden" name="redirect" value="{{ '/plan-your-visit/thank-you/' | absolute_url }}">

    <!-- Honeypot spam trap — left blank by humans, hidden from screen readers -->
    <input type="checkbox" name="botcheck" style="display:none" tabindex="-1" autocomplete="off" aria-hidden="true">

    <div class="form-group">
      <label for="visit-name">Name *</label>
      <input type="text" id="visit-name" name="name" required autocomplete="name">
    </div>

    <div class="form-group">
      <label for="visit-email">Email *</label>
      <input type="email" id="visit-email" name="email" required autocomplete="email">
    </div>

    <div class="form-group">
      <label for="visit-phone">Phone</label>
      <input type="tel" id="visit-phone" name="phone" autocomplete="tel">
    </div>

    <div class="form-row">
      <div class="form-group">
        <label for="visit-date">Which Sunday are you planning to visit?</label>
        <input type="date" id="visit-date" name="visit_date">
      </div>

      <div class="form-group">
        <label for="visit-party-size">Number in your group</label>
        <input type="number" id="visit-party-size" name="party_size" min="1" step="1">
      </div>
    </div>

    <div class="form-group">
      <label for="visit-message">Anything we should know?</label>
      <textarea id="visit-message" name="message" rows="4" placeholder="Kids' ages, accessibility needs, questions..."></textarea>
    </div>

    <button type="submit" class="btn btn-primary">Let Us Know You're Coming</button>
  </form>

  <p class="visit-form-status" id="visit-form-status" role="status" aria-live="polite"></p>
</section>

<script src="{{ '/assets/js/visit-form.js' | relative_url }}" defer></script>
