FROM ubuntu:focal

# solve warning "Can't locate Term/ReadLine.pm"
# https://github.com/phusion/baseimage-docker/issues/58#issuecomment-328814348
ARG DEBIAN_FRONTEND=noninteractive

# ###################
# install ros2 foxy #
# ###################

# upgrade all
RUN apt-get update
RUN apt-get upgrade -y

# set locale
RUN apt install locales -y
RUN locale-gen en_US en_US.UTF-8
RUN update-locale LC_ALL=en_US.UTF-8 LANG=en_US.UTF-8
ENV LANG=en_US.UTF-8
RUN locale

# Set timezone to default (avoid question)
# https://techoverflow.net/2019/05/18/how-to-fix-configuring-tzdata-interactive-input-when-building-docker-images/
RUN apt install tzdata -y

# Set keyboard (avoid question)
RUN apt install keyboard-configuration -y

# add sources: ROS 2 apt repositories
RUN apt install curl gnupg2 lsb-release -y
RUN curl -sSL https://raw.githubusercontent.com/ros/rosdistro/master/ros.key  -o /usr/share/keyrings/ros-archive-keyring.gpg
RUN echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/ros-archive-keyring.gpg] http://packages.ros.org/ros2/ubuntu $(lsb_release -cs) main" | tee /etc/apt/sources.list.d/ros2.list > /dev/null

# install ROS 2 packages
RUN apt update
RUN apt install ros-foxy-ros-base -y

# enable auto-complete 
RUN apt install -y python3-argcomplete
RUN activate-global-python-argcomplete3 --user

RUN echo "source /opt/ros/foxy/setup.bash" >> /etc/bash.bashrc
