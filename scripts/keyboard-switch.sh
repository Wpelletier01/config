#!/bin/bash



IFS=":"

out=$(setxkbmap -query | grep layout)

read -ra split <<< "$out"

current=$(echo "${split[1]}" | tr -d ' ')



if [ "$current" == "us" ]; then
  setxkbmap -layout ca -variant fr 

elif [ "$current" == "ca" ]; then
  setxkbmap -layout us
fi




