---
layout: home
---
## Les mantras pour l'abondance :

{% for day in site.data.mantras reversed %}
 {% if forloop.rindex <= site.data.day.dn %}{% if day[1].mantra %}
 {{day[0]}} : <a href="https://duckduckgo.com/?q=!g+{{day[1].qexp}}" title="{{day[1].desc}}">{{day[1].mantra}}</a> (<i>{{day[1].fr}}</i>)<br>
 {% endif %}{% endif %}
{% endfor %}


<br>
ecoutez le [programm][1] le [jour {{site.data.day.dn}}][2]

[1]: 21-days-abundance-fr.htm
[2]: index-fr.html
[3]: 21-days-abundance-en.htm
[4]: index-en.html
