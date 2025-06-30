#!/bin/bash

procid="$1"

# if process does not exist
ps -p "$procid" > /dev/null || { echo "error: process $procid does not exist"; exit 1; }

echo "PROCESS TRACEBACK (NEWEST PROCESSES SHOWN FIRST):"
echo "    PID COMMAND         USER"

while [ $procid -gt 0 ]; do
    ps -o pid= -o comm= -o user= "$procid"
    procid=$(ps -o ppid= "$procid" | tr -d ' ')
done
