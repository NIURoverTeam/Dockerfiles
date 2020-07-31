# ROS 2 Foxy Desktop

Container that replicates our target development environment: ROS 2's Foxy release, with the full desktop install.

Steps to use:

1. If you haven't already, install docker (and docker-compose, if you so choose)
1. Run `docker build -t <your docker username>/<container_name>:latest .` to build the image (ros2_foxy is the default container name)
1. If running on Windows in WSL, start your X-server (Display Number -1, "Start no Client", "Disable access control"), and make sure you've either run `export DISPLAY=$(grep -m 1 nameserver /etc/resolv.conf | awk '{print $2}'):0.0` or it's added to your `.bashrc`
1. Edit `launch.sh` to set `$IMAGE_NAME` to match the tag you provided to the `docker build` command in step 2
1. If you change any other parameters or environment variables in `launch.sh`, make sure you modify their respective counterpart in `attach.sh`
1. Finally, run `./launch.sh` to start the docker container. You should find yourself in a docker container with ROS2 Foxy installed. Run `ros2 doctor` to make sure everything is configured properly
1. If you want to attach to a running `ros2_foxy` container, simply run `./attach.sh` from another terminal
