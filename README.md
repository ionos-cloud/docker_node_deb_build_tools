# docker_node_deb_build_tools

A docker image based on the latest debian image.

On top of it:

- a general apt-get update is executed
- a removal of the docker-clean bash script that slows down Gitlab-runner stage executions
- installing then all the nodejs.11.x and build essentials. Also in the process more small tools are added as well for canonical debian package building (curl git g++ build-essential devscripts fakeroot)
