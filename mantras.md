---
layout: home
---
## mantras for abundance :

[![Français](img/fr.svg)](mantras-fr.html)


{% for day in site.data.mantras reversed %}
 {% if forloop.rindex <= site.data.day.dn %}{% if day[1].mantra %}
 {{day[0]}} : <a href="https://duckduckgo.com/?q=!g+{{day[1].qexp}}" title="{{day[1].fr}}">{{day[1].mantra}}</a> (<i>{{day[1].desc}}</i>)<br>
 {% endif %}{% endif %}
{% endfor %}


<br>
listen to the [program][1] for [day {{site.data.day.dn}}][2]
( [![GB](img/gb.svg)](index-en.html) [![FR](img/fr.svg)](index-fr.html) )

[1]: 21-days-abundance-en.htm
[2]: index-en.html
