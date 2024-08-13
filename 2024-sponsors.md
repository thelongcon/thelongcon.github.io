---
layout: default
permalink: /sponsors/
year: 2024
---

<div class="row marketing">
    <style>
      img.sponsorlogo { max-height:200px; max-width:600px; display:inline-block; padding:20px; }
      a.sponsortext { font-size:30px; font-weight:bold; display:inline-block; padding:20px }
    </style>
  <div class="col-lg-12">
    <h2>Interested in sponsorship?</h2>

    <p>Our call for sponsors is now open!</p>
    <p>If you would like to sponsor The Long Con, please review our <a href="/TLC-2024-Sponsorship-Package.pdf">sponsor package here</a>, and <a href="/contact">contact us</a>!</p>
  </div>
  {% for sponsor_group in site.data.sponsors %}
  <div class="col-lg-12">
    <h2>{{ sponsor_group.level }} Sponsors</h2>
    {% for sponsor in sponsor_group.sponsors %}
    <a href="{{ sponsor.link }}" target="_blank"><img class="sponsorlogo" src="/logos/{{ sponsor.logo }}" /></a>
    {% endfor %}
  </div>
  {% endfor %}
</div>

