#!/bin/bash
cd "$(dirname "$0")"

g1="../assets/g1_ansi.txt"
g2="../assets/g2_ansi.txt"

printf '\033[?25l' # clear cursor
printf '\033[2J' # clear screen
printf '\033[H' # set cursor position

cat $g1

while [ 1 ]; do
    read -rsn1 testinput
    if [ "$testinput" = w ]; then
        printf '\033[H' # set cursor position
#        printf '\033[2J' # clear screen
        cat $g1
    elif [ "$testinput" = s ]; then
        printf '\033[H' # set cursor position
#        printf '\033[2J' # clear screen
        cat $g2
    fi
done

printf '\033[?25h' # show cursor
