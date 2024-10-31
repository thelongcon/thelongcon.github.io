---
layout: with-jumbotron-ctf
permalink: /ctf2024
---


<style>
  img.sponsorlogo { max-height:200px; max-width:450px; display:inline-block; padding:20px; }
  a.sponsortext { font-size:30px; font-weight:bold; display:inline-block; padding:20px }
</style>

<div class="row marketing">
  <div class="col-lg-6">
    <h4>Who?</h4>
    <p>The Long Con Inc. is a non-profit corporation established in July 2012 with the sole purpose of putting on information security conferences. All conference expenses are covered by our amazing sponsors and all the organization, planning, and execution is carried out by a dedicated group of experienced volunteers. Our first three conferences ran under the banner of BSides Winnipeg.</p>
  </div>

  <div class="col-lg-6">
    <h4>What?</h4>
    <p>The Long Con is an information security conference by the community for the community. It follows a traditional conference format but encourages participation, discussion, and collaboration.</p>
  </div>

  <div class="col-lg-12">
  <h4>Made possible by</h4>
  {% for sponsor_group
   in site.data.sponsors %}
    {% for sponsor in sponsor_group.sponsors %}
    <a href="{{ sponsor.link }}" target="_blank">
      {% if sponsor.logo %}
      <img class="sponsorlogo" src="/logos/{{ sponsor.logo }}" {% if sponsor.scale %} style="transform: scale({{ sponsor.scale }})" {% endif %} />
      {% else %}
      <p style="font-size: 4rem">{{ sponsor.name }}</p>
      {% endif %}
    </a>
    {% endfor %}
  {% endfor %}
  </div>
</div>
