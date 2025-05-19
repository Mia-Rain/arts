counter=1
for i in ./*.*; do
  i="${i#./}"
  if [ "$i" != "index.html" ] && [ "$i" != "style.css" ] && [ "$i" != "favicon.png" ] ; then
    printf '%s:./%s\n' "$counter" "${i#./}"
    : $((counter+=1))
  fi
done
