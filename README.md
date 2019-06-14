# Dockerfiles

This repository contains a collection of Dockerfiles (with included run scripts) custom written for development on the NIU Mars Rover Team's software projects.

Within each directory is a README.md with instructions for how to build, run, and configure each container. The containers are sandboxed, with their own software and filestystems, but in some cases have volumes from the host filesystem mounted into them. In addition, many may have access to the host's network, graphics, and devices. These accesses will be noted in the README.md as well.
