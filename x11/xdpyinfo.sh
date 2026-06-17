#!/usr/bin/env bash

xdpyinfo --help
xdpyinfo -display ":0" |b
xdpyinfo -display ":0" -ext "MIT-SHM"
xdpyinfo -display ":0" -ext "Multi-Buffering"
xdpyinfo -display ":0" |g "resolution"
