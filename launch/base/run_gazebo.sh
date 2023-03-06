#!/bin/bash
if [ ! -f $(which rocker) ]; then
    printf "This script relies on rocker. Follow instructions here for install https://github.com/osrf/rocker"
    exit 1
fi

# NOTE: --nvidia isn't necessary but may speed up graphics
rocker --name gazebo --nvidia --network host --x11 gazebo gazebo

echo "Done."
