#!/bin/bash

function usage() {
  echo "Usage: $0 [-h] [-y] file.jelly"
  echo "Options:"
  echo "  -h Display the help message"
  echo "  -y yes to overwrite work files"
  echo "  -d run jelly binary in this directory"
}

rmopt="-i"
dstr=""
jellypath="/opt/homebrew/bin/jelly"
while getopts "dhy" OPTIONS; do
  case ${OPTIONS} in
    h) usage 
       exit 0 
       ;;
    d) jellypath="./jelly"
       dstr="d"
       ;;
    y) rmopt=""
       ;;
    ?) usage
      exit 1 
      ;;
  esac
done

fullfile=${@:$OPTIND:1}
if [ "$fullfile" == "" ]; then
  usage
  exit 1
fi

filename=$(basename -- "$fullfile")
extension="${filename##*.}"
basefn="${filename%.*}"

if [ "$extension" != "jelly" ]; then
  echo "expected file with .jelly extension"
  usage
  exit 1
fi

rm ${rmopt} ${basefn}.out
rm ${rmopt} ${basefn}.err
rm ${rmopt} u${dstr}_${basefn}.shortcut

# Compile the shortcut and capture output
${jellypath} ${basefn}.jelly --export --out u${dstr}_${basefn}.shortcut > ${basefn}.out 2> ${basefn}.err
status=$?
#echo "Status: $status"

# Check for errors in the compile output
grep "Found " ${basefn}.out > /dev/null
gstatus=$?
#echo "gstatus: ${gstatus}"
if [ ${gstatus} != "1" ]; then
  cat ${basefn}.out
  exit 1
fi

rm ${rmopt} ${basefn}.shortcut
shortcuts sign --mode anyone --input "u${dstr}_${basefn}.shortcut" --output "${basefn}.shortcut"

open -a shortcuts "${basefn}.shortcut"
