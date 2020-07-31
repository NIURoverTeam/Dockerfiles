ARG BASE_IMAGE=osrf/ros:foxy-desktop

# Install packages
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
CMD ["bash"]
