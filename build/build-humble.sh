#!/bin/bash

TOP_DIR=$(git rev-parse --show-toplevel)
if [ -z "$TOP_DIR" ]; then
    echo "Not a git repository. Exiting."
    exit 1
fi

# see https://github.com/tsnowak/jetson-containers scripts dir
cd $TOP_DIR/build/jetson-containers
./scripts/docker_build_ros.sh --distro humble --package ros_base --with-pytorch
