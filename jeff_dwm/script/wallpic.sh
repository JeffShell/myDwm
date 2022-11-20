#!/bin/sh
# xrandr --output eDP-1-1 --mode 1920x1080 --rate 60.00
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
sIndex=$((RANDOM %${#sarr[*]}))
rIndex=$((RANDOM %${#rarr[*]}))

standImg=~/MyImage/standImg/${sarr[sIndex]}
rowImg=~/MyImage/rowImg/${rarr[rIndex]}


while true; do
  feh --bg-fill $standImg $rowImg 
  sleep 1000 
done
