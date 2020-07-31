# Dockerfiles

This repository contains a collection of Dockerfiles and docker-compose.yml's put together to support development on the NIU Mars Rover Team's software projects.

Within each directory is a README.md with any instructions for how to build, run, and configure each container, as well as special notes for that particular build. 
The containers are sandboxed, with their own programs, operating system, and filestystems, but in some cases they have volumes from the host filesystem mounted into them. 
In addition, many may have access to the host's network, graphics, and devices. 
These accesses will be noted in the README.md as well.
