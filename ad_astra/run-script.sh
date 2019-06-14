#!/bin/bash
xhost +local:
docker run -it --net=host \
	--user=$(id -u) \
	-e DISPLAY=$DISPLAY \
	-e QT_GRAPHICSSYSTEM=native \
	-e USER=$USER \
	-e START_TMUX=$TRUE \
	-e CONTAINER_NAME=ad-astra-dev \
	-v "/tmp/.X11-unix:/tmp/.X11-unix" \
	-v "/etc/group:/etc/group:ro" \
	-v "/etc/passwd:/etc/passwd:ro" \
	-v "/etc/shadow:/etc/shadow:ro" \
	-v "/etc/sudoers.d:/etc/sudoers.d:ro" \
	-v "/home/$USER/:/home/$USER/" \
	--workdir=/home/$USER \
	--name=ad-astra-dev \
	luckierdodge/ad_astra:dev