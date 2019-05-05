#!/bin/bash
#xhost +local:
docker run -it --net=host \
	-e DISPLAY=$DISPLAY \
	-e QT_GRAPHICSSYSTEM=native \
	-e CONTAINER_NAME=wsl-ros \
	--workdir=/home/wsl_ros \
	-v /mnt/c/catkin_ws/:/home/wsl_ros/catkin_ws/ \
	--name=wsl-ros \
	luckierdodge/wsl_ros:dev
	#--user=$(id -u) \
	#-e USER=$USER \
	#-e START_TMUX=$TRUE \
