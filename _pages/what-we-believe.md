---
layout: page
title: "What We Believe"
subtitle: "Our biblical foundation and confessional commitments"
permalink: /what-we-believe/
---

{{ site.data.beliefs.intro | markdownify }}
{: .beliefs-intro}

<div class="beliefs-grid" markdown="1">
{% for belief in site.data.beliefs.beliefs %}
<section class="belief-section" markdown="1">
## {{ belief.title }}
{{ belief.content }}
</section>
{% endfor %}
</div>