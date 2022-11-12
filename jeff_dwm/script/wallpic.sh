#!/bin/sh
xrandr --output eDP-1-1 --auto --rate 60.00
while true; do
  feh --bg-fill --randomiz ~/MyImage/*
  sleep 1000 
done
