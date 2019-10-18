#

jekyll build

qm=$(ipfs add -Q -w -r _site/21-days* _audios/*.mp3)
echo http://127.0.0.1:8080/ipfs/$qm
pm=$(cat _data/ipfs.yml | xyml qm)
if false; then
cat <<EOF > _data/ipfs.yml
--- # blockRing™
qm: $qm
pm: $pm
...
EOF
fi
