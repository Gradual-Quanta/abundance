#

st=287
yd=$(date +%j);

dn=$(expr $yd - $st)
date=$(date +%Y.%m.%d)
cat > _data/day.yml <<EOT
---
day: d$dn
dn: $dn
date: $date
EOT
jekyll build
git add style.css index*.md 21-days*.htm
git add _data/day.yml _data/mantras.yml
git add notes.md revs.log
git status . -uno
cat _data/day.yml
