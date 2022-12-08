---
layout: page
title: People
permalink: /people/
---

{% for person in site.data.people %}
<section>
  <div class="row">
    <div class="col col-3 col-d-12">
    <img src="{{ person.image | relative_url }}" alt="Photo of {{ person.name }}"/>
    </div>
    <div class="col col-9 col-d-12">
      <h3 id="{{ person.name | handleize }}">
        <a href="{{ person.link }}">{{ person.name }}</a>
      </h3>
      <p>
        {{ person.bio }}
      </p>
    </div>
  </div>
</section>
{% endfor %}
