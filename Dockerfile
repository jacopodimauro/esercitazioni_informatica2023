FROM ubuntu
MAINTAINER jacopodimauro
ARG DEBAIN_FRONTEND=noninteractive
RUN apt-get update
RUN apt-get install -y nano
COPY prova.sh /home/
RUN apt-get install -y sudo
RUN sudo apt install -y python3
RUN ln -sf /usr/share/zoneinfo/Europe/Rome /etc/localtime
RUN echo Europe/Rome > /etc/timezone
RUN sudo apt install -y r-base
RUN sudo apt install -y pip
RUN pip install numpy
