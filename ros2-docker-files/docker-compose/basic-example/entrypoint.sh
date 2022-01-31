#!/bin/bash
set -e

# (re)build the ros-packages in the workspace
. /opt/ros/$1/setup.sh
colcon build
. ./install/setup.sh

# remove first argument ('foxy' added in dockerfile)
exec "${@: 2}"