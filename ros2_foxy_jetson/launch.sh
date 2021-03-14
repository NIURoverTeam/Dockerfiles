#! /bin/bash
 
# Copyright (c) 2019 Javier Peralta Saenz, Ariel Mora Jimenez.
# 
# This program is free software: you can redistribute it and/or modify  
# it under the terms of the GNU General Public License as published by  
# the Free Software Foundation, version 3.
#
# This program is distributed in the hope that it will be useful, but 
# WITHOUT ANY WARRANTY; without even the implied warranty of 
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU 
# General Public License for more details.
#
# You should have received a copy of the GNU General Public License 
# along with this program. If not, see <http://www.gnu.org/licenses/>.
#
# Modified by Ryan D. Lewis

CONTAINER_USER=$USER
CONTAINER_NAME=ros2_foxy_jetson
USER_ID=$UID
IMAGE=niurover/ros2_foxy_jetson:latest

sudo docker run -it --rm \
	--name $CONTAINER_NAME \
	--user=$USER_ID\
	--env="DISPLAY" \
	--env="CONTAINER_NAME=$CONTAINER_NAME" \
	--workdir="/home/$CONTAINER_USER" \
	--volume="/home/$CONTAINER_USER:/home/$CONTAINER_USER" \
	--volume="/etc/group:/etc/group:ro" \
	--volume="/etc/passwd:/etc/passwd:ro" \
	--volume="/etc/shadow:/etc/shadow:ro" \
	--volume="/etc/sudoers.d:/etc/sudoers.d:ro" \
	--volume="/tmp/.X11-unix:/tmp/.X11-unix:rw" \
	--device="/dev/input/js0" \
	--device="/dev/ttyACM0" \
	$IMAGE bash\
