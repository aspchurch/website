---
layout: page
title: "What We Believe"
#subtitle: "Our biblical foundation and confessional commitments"
description: "Westminster Confession beliefs at All Saints Presbyterian Church, Carlsbad. Our biblical foundation, reformed theology, and historic Christian creeds."
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