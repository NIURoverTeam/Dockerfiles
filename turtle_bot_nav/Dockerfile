ARG BASE_IMAGE=osrf/ros:foxy-desktop

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
		ros-foxy-gazebo-ros-pkgs \
		&& apt-get clean \
		&& rm -rf /var/lib/apt/lists/*

# Python package for Serial Communications
RUN pip3 install pyserial

# Install Turtlebot Navigation
RUN apt-get update && apt-get install -y \
		ros-foxy-navigation2 \
		ros-foxy-nav2-bringup \
		ros-foxy-turtlebot3* \
		&& rm -rf /var/lib/apt/lists/*

ENV TURTLEBOT3_MODEL=waffle
ENV GAZEBO_MODEL_PATH=$GAZEBO_MODEL_PATH:/opt/ros/foxy/share/turtlebot3_gazebo/models

CMD ["bash"]
