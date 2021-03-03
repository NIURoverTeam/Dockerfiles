# inherit both the ROS2 and Webots containers
ARG BASE_IMAGE_WEBOTS=cyberbotics/webots:R2021a-ubuntu20.04
ARG IMAGE_ROS2=niurover/ros2_foxy:latest

FROM $BASE_IMAGE_WEBOTS AS base
FROM $IMAGE_ROS2 AS image_ros2

# resolve a missing dependency for webots demo
RUN apt-get update && apt-get install -y \
		libxtst6 \
		&& apt-get clean \
		&& rm -rf /var/lib/apt/lists/*

# Finally open a bash command to let the user interact
CMD ["/bin/bash"]
