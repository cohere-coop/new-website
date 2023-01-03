---
layout: page
title: People
permalink: /people/
---

add an intro here that reinforces the vibes we want to give off:
people focused, competent, effective and efficient, problem solving goal oriented

Cohere is 
worker-cooperative 
we share the same values that we bring to our clients - 
listening to each other and amplifying each other's thoughts
stay goal-oreinted, including reminding ourselves that we have the same goals when we have disagreements
ask each other for advice, we are ultra competent because we bring all our expertise across multiple people to each of our clients

do we want to add a little about how we're all very experienced in tech?



{% for person in site.data.people %}
<section>
  <div class="row">
    <div class="col col-3 col-d-12">
      <img class="lazy" data-src="{{ person.image | relative_url }}" alt="Photo of {{ person.name }}">
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
