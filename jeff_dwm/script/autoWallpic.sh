#!/bin/sh
si=0
for file in $(ls ~/MyImage/standImg/)
do
  sarr[$si]=$file
  ((si++))
done

ri=0
for file in $(ls ~/MyImage/rowImg/)
do
  rarr[$ri]=$file
  ((ri++))
done


while true; do
  sIndex=$((RANDOM %${#sarr[*]}))
  rIndex=$((RANDOM %${#rarr[*]}))

  standImg=~/MyImage/standImg/${sarr[sIndex]}
  rowImg=~/MyImage/rowImg/${rarr[rIndex]}

  feh --bg-fill $standImg $rowImg 
  sleep 1000 
done
