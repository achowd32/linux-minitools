#!/bin/bash

cd "$(dirname $0)"

while getopts "c" arg; do
  case $arg in
    c)
      rm -rf /usr/share/minitools-assets/*
      ;;
  esac
done

cp -r assets/* /usr/share/minitools-assets
