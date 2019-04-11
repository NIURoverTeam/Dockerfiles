FROM luckierdodge/ros_melodic:dev
RUN apt-get update && apt-get install -y python-pip \
	&& rm -rf /var/likb/apt/lists/*
RUN pip install jupyros
RUN jupyter nbextension enable --py --sys-prefix jupyros
CMD ["bash"]
