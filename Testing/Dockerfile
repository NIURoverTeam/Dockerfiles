FROM osrf/ros:kinetic-desktop-full
#RUN locale-gen en_US.UTF-8
#ENV LANG en_US.UTF-8
RUN apt-get update && apt-get install -y \
		tmux \
		curl \
		wget \
		vim \
		sudo \
		libgl1-mesa-glx \
		libgl1-mesa-dri \
		mesa-utils \
		unzip \
		&& rm -rf /var/likb/apt/lists/*
CMD ["bash"]
