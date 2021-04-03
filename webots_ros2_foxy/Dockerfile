# Use Webots docker container as base
ARG BASE_IMAGE_WEBOTS=cyberbotics/webots:R2021a-ubuntu20.04
FROM $BASE_IMAGE_WEBOTS AS base

# ==================================================================================
# niurover/ros2_foxy uses osrf/ros:foxy-desktop as its base, so I need to add code from
# container heirarchy all the way back to where it can stem off of `base` from above
# ==================================================================================

# ----------------------------------------------------------------------------------
# taken from Dockerfile for ros:foxy-ros-core-focal found at:
# https://github.com/osrf/docker_images/blob/master/ros/foxy/ubuntu/focal/ros-core/Dockerfile
# ----------------------------------------------------------------------------------

## setup timezone	# NOTE commented out since timezone should already be set up
#RUN echo 'Etc/UTC' > /etc/timezone && \
#    ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime && \
#    apt-get update && \
#    apt-get install -q -y --no-install-recommends tzdata && \
#    rm -rf /var/lib/apt/lists/*

# install packages
RUN apt-get update && apt-get install -q -y --no-install-recommends \
    dirmngr \
    gnupg2 \
    && rm -rf /var/lib/apt/lists/*

# setup keys
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654

# setup sources.list
RUN echo "deb http://packages.ros.org/ros2/ubuntu focal main" > /etc/apt/sources.list.d/ros2-latest.list

# setup environment
ENV LANG C.UTF-8
ENV LC_ALL C.UTF-8

ENV ROS_DISTRO foxy

# install ros2 packages
RUN apt-get update && apt-get install -y --no-install-recommends \
    ros-foxy-ros-core=0.9.2-1* \
    && rm -rf /var/lib/apt/lists/*

## setup entrypoint	# NOTE ignore this part of their Dockerfile
#COPY ./ros_entrypoint.sh /
#
#ENTRYPOINT ["/ros_entrypoint.sh"]
#CMD ["bash"]

# ----------------------------------------------------------------------------------
# taken from Dockerfile for ros:foxy-ros-base-focal found at:
# https://github.com/osrf/docker_images/blob/master/ros/foxy/ubuntu/focal/ros-base/Dockerfile
# ----------------------------------------------------------------------------------

# install bootstrap tools
RUN apt-get update && apt-get install --no-install-recommends -y \
    build-essential \
    git \
    python3-colcon-common-extensions \
    python3-colcon-mixin \
    python3-rosdep \
    python3-vcstool \
    && rm -rf /var/lib/apt/lists/*

# bootstrap rosdep
RUN rosdep init && \
  rosdep update --rosdistro $ROS_DISTRO

# setup colcon mixin and metadata
RUN colcon mixin add default \
      https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml && \
    colcon mixin update && \
    colcon metadata add default \
      https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml && \
    colcon metadata update

# install ros2 packages
RUN apt-get update && apt-get install -y --no-install-recommends \
    ros-foxy-ros-base=0.9.2-1* \
    && rm -rf /var/lib/apt/lists/*

# ----------------------------------------------------------------------------------
# taken from Dockerfile for osrf/ros:foxy-desktop-focal (or is it osrf/ros:foxy-desktop?) found at:
# https://github.com/osrf/docker_images/blob/master/ros/foxy/ubuntu/focal/desktop/Dockerfile 
# ----------------------------------------------------------------------------------
  
# This is an auto generated Dockerfile for ros:desktop
# generated from docker_images_ros2/create_ros_image.Dockerfile.em
#FROM ros:foxy-ros-base-focal	# NOTE commented out since satisfied by above

# install ros2 packages
RUN apt-get update && apt-get install -y --no-install-recommends \
    ros-foxy-desktop=0.9.2-1* \
    && rm -rf /var/lib/apt/lists/*

# ----------------------------------------------------------------------------------
# taken from Dockerfile for niurover/ros2_foxy found at:
# https://github.com/NIURoverTeam/Dockerfiles/blob/master/ros2_foxy/Dockerfile
# ----------------------------------------------------------------------------------
#ARG BASE_IMAGE=osrf/ros:foxy-desktop	# NOTE commented out since satisfied by above

# Install work packages
#FROM $BASE_IMAGE as base	# NOTE commented out since satisfied by above
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

#CMD ["bash"]	# NOTE ignore this part of the Dockerfile

# ----------------------------------------------------------------------------------
# new stuff added on top of niurover/ros2_foxy to assist with Webots + ROS2
# ----------------------------------------------------------------------------------

# resolve a missing dependency for webots demo
RUN apt-get update && apt-get install -y \
		libxtst6 \
		&& apt-get clean \
		&& rm -rf /var/lib/apt/lists/*

# Finally open a bash command to let the user interact
CMD ["/bin/bash"]
