#!/bin/sh
set -e

chmod 700 /home/wsl_ros/catkin_ws/src/RoverCoreOS

exec "$@"
