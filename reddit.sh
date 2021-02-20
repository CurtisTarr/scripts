#!/bin/sh

[  -z "$1" ] && sub=all || sub=$1
url=https://www.reddit.com/r/$sub.rss

out=$(curl $url -s -N --user-agent "shell:reddit:v1.0" | xmllint --format --xpath "//*[local-name()='title']" - | sed -e 's/<\/[^>]*>/\\n\\n-/g' -e 's/<[^>]*>//g')
printf "$out"