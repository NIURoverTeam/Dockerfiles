docker run -it --net=host ^
-e USER=dev ^
--workdir=/home/dev ^
--user=dev ^
--name=jupyter-ros-dev ^
luckierdodge/jupyter_ros:dev

