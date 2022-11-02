#!/bin/sh
xrandr --output eDP-1-1 --mode 1920x1080 --rate 60.00
while true; do
  feh --bg-fill --randomiz ~/MyImage/*
  sleep 300 
done
