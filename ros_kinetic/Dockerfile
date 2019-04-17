FROM osrf/ros:kinetic-desktop-full
RUN apt-get update && apt-get upgrade -y && apt-get install -y \
	    tmux \
	    curl \
	    wget \
	    vim \
	    sudo \
	    unzip \
		libgl1-mesa-glx \
	    libgl1-mesa-dri \
	    mesa-utils \
	    && rm -rf /var/likb/apt/list/*
CMD ["bash"]
