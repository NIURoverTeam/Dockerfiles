FROM osrf/ros:kinetic-desktop-full
RUN apt-get update && apt-get upgrade -y && apt-get install -y \
	    tmux \
	    curl \
	    wget \
	    vim \
	    sudo \
	    unzip \
	    && rm -rf /var/likb/apt/list/*
RUN adduser wsl_ros
RUN usermod -aG sudo,dialout,tty,i2c wsl_ros
CMD ["bash"]
