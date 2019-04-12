FROM osrf/ros:kinetic-desktop-full
RUN apt-get update && apt-get upgrade -y && apt-get install -y \
	    tmux \
	    curl \
	    wget \
	    vim \
	    sudo \
	    unzip \
		python-pip \
	    && rm -rf /var/likb/apt/list/*
RUN pip install jupyros
RUN jupyter nbextension enable --py --sys-prefix jupyros
CMD ["bash"]
