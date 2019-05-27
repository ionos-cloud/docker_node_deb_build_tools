FROM debian:latest
 
RUN apt-get update

RUN rm -f /etc/apt/apt.conf.d/docker-clean

RUN apt-get update && apt-get -y --no-upgrade --no-remove install curl git g++ build-essential

RUN curl -sL https://deb.nodesource.com/setup_11.x  | bash -

RUN apt-get -y install nodejs
