FROM debian:latest
 
RUN rm -f /etc/apt/apt.conf.d/docker-clean

RUN apt-get update && apt-get -y --no-upgrade --no-remove install curl net-tools git g++ build-essential devscripts fakeroot

RUN curl -sL https://deb.nodesource.com/setup_11.x  | bash -

RUN apt-get -y install nodejs

RUN rm -rf /var/lib/apt/lists/*

RUN apt-get clean
