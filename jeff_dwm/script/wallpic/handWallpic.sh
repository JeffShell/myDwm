#!/bin/sh
CURRENT_DIR=$(cd $(dirname $0); pwd)
source ${CURRENT_DIR}/config.sh
path="/"
  if [ "$showR18" = true ]; then
    sIndex=$((RANDOM %${#r18StandArr[*]}))
    rIndex=$((RANDOM %${#r18RowArr[*]}))
    path="xp/"
    sArr=${r18StandArr[sIndex]}
    rArr=${r18RowArr[sIndex]}
  else
    sIndex=$((RANDOM %${#standArr[*]}))
    rIndex=$((RANDOM %${#rowArr[*]}))
    path="/"
    sArr=${standArr[sIndex]}
    rArr=${rowArr[sIndex]}
  fi
  standImg=~/MyImage/${path}standImg/${sArr}
  rowImg=~/MyImage/${path}rowImg/${rArr}

  feh --bg-fill $standImg $rowImg 
