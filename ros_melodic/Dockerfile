FROM osrf/ros:melodic-desktop-full
RUN apt-get update && apt-get upgrade -y && apt-get install -y \
	    tmux \
	    curl \
	    wget \
	    vim \
	    sudo \
	    unzip \
	    && rm -rf /var/likb/apt/list/*
CMD ["bash"]
