#!/bin/bash
cd "$(dirname "$0")"

g1="/usr/share/minitools-assets/g1_ansi.txt"
g2="/usr/share/minitools-assets/g2_ansi.txt"

show_cursor(){
    printf '\033[?25h'
}

trap show_cursor EXIT

printf '\033[?25l' # clear cursor
printf '\033[2J' # clear screen
printf '\033[H' # set cursor position

cat $g1

while true; do
    read -rsn1 testinput
    if [ "$testinput" = w ]; then
        printf '\033[H' # set cursor position
        cat $g1
    elif [ "$testinput" = s ]; then
        printf '\033[H' # set cursor position
        cat $g2
    fi
done
