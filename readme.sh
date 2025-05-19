#!/bin/sh
counter=1
printf '%s\narts\n%s\n' "---" "---"
for i in ./*.*; do
  i="${i#./}"
  if [ "$i" != "index.html" ] && [ "$i" != "style.css" ] && [ "$i" != "favicon.png" ] && [ "$i" != "gen.sh" ] && [ "$i" != "readme.sh" ] && [ "$i" != "link-list.sh" ]; then
    printf '://%s \n' "${i#./}"
    : $((counter+=1))
  fi
done
printf '%s\n' "---"
