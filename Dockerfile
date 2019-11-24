# From the Kali linux base image
FROM debian:latest

ENV TERM="xterm"
# Update and apt install programs
RUN apt-get update && apt-get full-upgrade -y && apt-get autoremove -y && apt-get install -y git

# Install PoshC2 
ADD . /opt/PoshC2
RUN /opt/PoshC2/Install.sh 

# Set entrypoint and working directory
WORKDIR /opt/PoshC2

# User config
RUN apt-get -y install vim
ENV EDITOR="vim"

