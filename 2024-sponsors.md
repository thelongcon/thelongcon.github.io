---
layout: sponsors
permalink: /2024/sponsors/
year: 2024
---

<div class="row marketing">
    <style>
      img.sponsorlogo { max-height:200px; max-width:450px; display:inline-block; padding:20px; }
      a.sponsortext { font-size:30px; font-weight:bold; display:inline-block; padding:20px }
    </style>
  {% for sponsor_group in site.data.sponsors_2024 %}
  <div class="col-lg-12">
    <h2>{{ sponsor_group.level }} Sponsors</h2>
    {% for sponsor in sponsor_group.sponsors %}
    <a href="{{ sponsor.link }}" target="_blank">
      {% if sponsor.logo %}
      <img class="sponsorlogo" src="/logos/{{ sponsor.logo }}" {% if sponsor.scale %} style="transform: scale({{ sponsor.scale }})" {% endif %} />
      {% else %}
      <p style="font-size: 4rem">{{ sponsor.name }}</p>
      {% endif %}
    </a>
    {% endfor %}
  </div>
  {% endfor %}
</div>

