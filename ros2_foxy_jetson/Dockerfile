ARG BASE_IMAGE=arm64v8/ros:foxy

# Install work packages
FROM $BASE_IMAGE as base
RUN apt-get update && apt-get upgrade -y && apt-get install -y \
	    tmux \
	    curl \
	    wget \
	    vim \
	    sudo \
	    unzip \
		python3-pip \
		&& apt-get clean \
		&& rm -rf /var/lib/apt/lists/*

# Install ROS Packages
RUN apt-get update && apt-get install -y \
		ros-foxy-turtlesim \
		~nros-foxy-rqt* \
		ros-foxy-teleop-tools \
		ros-foxy-joy-linux \
		&& apt-get clean \
		&& rm -rf /var/lib/apt/lists/*

RUN pip3 install pyserial

CMD ["bash"]
