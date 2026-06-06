#!/usr/bin/env sh
## Updated ArchReal 2026-04-25 11:32 Sat

while true; do
  _date=$(date -I)
  _time=$(date +"%H:%M")
  _day=$(date +"%a")
  xsetroot -name " $_date $_time $_day "
  sleep 5
done
