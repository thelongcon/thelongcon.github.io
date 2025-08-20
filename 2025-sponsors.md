---
layout: sponsors
permalink: /2025/sponsors/
year: 2025
---

<div class="row marketing">
    <style>
      img.sponsorlogo { max-height:200px; max-width:450px; display:inline-block; padding:20px; }
      a.sponsortext { font-size:30px; font-weight:bold; display:inline-block; padding:20px }
    </style>
  <div class="col-lg-12">
    <h2>Interested in sponsorship?</h2>

    <p>Our call for sponsors is now open!</p>
    <p>If you would like to sponsor The Long Con, please review our <a href="/TLC-2025-Sponsorship-Package.pdf">sponsor package here</a>, and <a href="/contact">contact us</a>!</p>
  </div>
  {% assign sponsor_year_name = 'sponsors_' | append: page.year %}
  {% for sponsor_group in site.data[sponsor_year_name] %}
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

