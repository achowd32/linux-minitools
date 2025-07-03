#!/bin/bash

username="$(whoami)"
term="$(tty | tail -c +6)"

ps ax -o user:32,%cpu:32,tty:32,comm:5 | 
awk -v uname="$username" -v ter="$term" '$1 == uname && $3 == ter && $4 == "ps" { print $2 }'
