#

find . -name "*.*~*" -delete
jekyll build
if ! git diff --quiet HEAD^ HEAD; then
option="--raw-leaves --trickle -s size-1048576 --cid-base=base58btc"
qm=$(ipfs add -Q -w -r index.md _site/21-days* _data/mantras.yml _data/audio.yml _audios/*.mp3 $option )
echo http://127.0.0.1:8080/ipfs/$qm
pm=$(cat _data/ipfs.yml | xyml qm)
if true; then
cat <<EOF > _data/ipfs.yml
--- # blockRing™
qm: $qm
pm: $pm
...
EOF
fi

else
 echo "git: nothing new !"
fi
