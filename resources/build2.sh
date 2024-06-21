#!/bin/sh
dir=$(pwd -P)
dir="${dir%/}"
subdir="${dir##*/}"
echo $subdir

if [ ${subdir}X = "resourcesX" ]; then
  swift build -c release
  #cp .build/release/jelly ./jelly
  cp ../.build/arm64-apple-macosx/release/jelly ./jelly
else
  echo "I want to be run in Open-Jellycore/resources"
fi


