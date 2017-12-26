#!/bin/zsh
for i in $(seq -f "%02g" 0 $1)
do
  touch "$i"
done
