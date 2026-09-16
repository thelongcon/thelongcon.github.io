---
layout: sponsors
permalink: /2026/sponsors/
year: 2026
---

<div class="row marketing">
    <style>
      img.sponsorlogo { max-height:200px; max-width:450px; display:inline-block; padding:20px; }
      a.sponsortext { font-size:30px; font-weight:bold; display:inline-block; padding:20px }
    </style>
  {% assign sponsor_year_name = 'sponsors_' | append: page.year %}
  {% for sponsor_group in site.data[sponsor_year_name] %}
  <div class="col-lg-12">
    <h2>{{ sponsor_group.level }} Sponsors</h2>
    {% for sponsor in sponsor_group.sponsors %}
      {% if sponsor.link %}
        <a href="{{ sponsor.link }}" target="_blank">
          {% if sponsor.logo %}
            <img class="sponsorlogo" src="/logos/{{ sponsor.logo }}" {% if sponsor.scale %} style="transform: scale({{ sponsor.scale }})" {% endif %} />
          {% else %}
          <p style="display: inline-block; font-size: 3rem">{{ sponsor.name }}</p>
          {% endif %}
        </a>
      {% else %}
        <p style="display: inline-block; font-size: 3rem; margin-right: 3rem">{{ sponsor.name }}</p>
      {% endif %}
    {% endfor %}
  </div>
  {% endfor %}
</div>

