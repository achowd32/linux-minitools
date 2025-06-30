#!/bin/bash

usepid=0
while getopts "n" opt; do
    case $opt in
      n) usepid=1
        ;;
      ?) 
        echo "invalid option: -${OPTARG}."
        exit 1
        ;;
    esac
done

shift $((OPTIND - 1))
procid="$1"

# if process does not exist
ps -p "$procid" > /dev/null || { echo "error: process $procid does not exist"; exit 1; }

recur(){
    # declare local variables, current pid and depth
    local pid="$1"
    local depth="$2"

    # print appropriate number of spaces, corresponding to depth
    printf "%*s" "$depth" ""

    # print either name or number, depending on flags
    [ $usepid -eq 0 ] && ps -o comm= "$pid" | tr -d " "
    [ $usepid -eq 1 ] && echo "$pid"

    # recur for every child of the current process
    for p in $(pgrep -P "$pid"); do
        recur "$p" "$((depth+2))"
    done
}

# initiate with given PID and 0 depth
recur "$procid" 0
