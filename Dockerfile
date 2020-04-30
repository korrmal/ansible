FROM debian:10-slim

RUN apt-get update \
    && apt-get upgrade -y \
    && apt-get -y install gnupg \
    && echo "deb http://ppa.launchpad.net/ansible/ansible/ubuntu bionic main" | tee -a /etc/apt/sources.list \
    && apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 93C4A3FD7BB9C367 \
    && apt-get update \
    && apt-get install -y ansible
