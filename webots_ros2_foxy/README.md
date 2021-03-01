# ROS 2 Foxy Desktop + Webots

Container that replicates our target development environment: ROS 2's Foxy release, with the full desktop install, plus Webots, a robot simulator tool. Webots runs successfully in this container on shatterdome; your mileage may vary on your personal device.

#### Steps to use *on shatterdome* (Webots functionality IS guaranteed):

1. Sign in to shatterdome through some method (NoMachine recommended for remote access).
1. Open a terminal and start docker, either with `sudo service docker start` or some automatic startup.
1. Finally, run `./launch.sh` to start the docker container. You should find yourself in a docker container with ROS2 Foxy and Webots installed. Run `ros2 doctor` to make sure everything is configured properly.
1. If you want to attach to a running `webots_ros2_foxy` container, simply run `./attach.sh` from another terminal.

#### Steps to use *on a personal device* (Webots functionality is NOT guaranteed):

1. If you haven't already, install docker (and docker-compose, if you so choose).
1. If you haven't already, install required x11 utils with `sudo apt install x11-xserver-utils`.
1. If running on Windows in WSL, start your X-server (Display Number -1, "Start no Client", "Disable access control"), and make sure you've either run `export DISPLAY=$(grep -m 1 nameserver /etc/resolv.conf | awk '{print $2}'):0.0` or it's added to your `.bashrc`. 
1. If you change any parameters or environment variables in `launch.sh`, make sure you modify their respective counterpart in `attach.sh`.
1. Finally, run `./launch.sh` to start the docker container. You should find yourself in a docker container with ROS2 Foxy and Webots installed. Run `ros2 doctor` to make sure everything is configured properly.
1. If you want to attach to a running `webots_ros2_foxy` container, simply run `./attach.sh` from another terminal.
