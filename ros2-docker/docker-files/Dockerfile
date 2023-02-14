# jvr/ros2:base-image
FROM ubuntu:jammy

# solve warning "Can't locate Term/ReadLine.pm"
# https://github.com/phusion/baseimage-docker/issues/58#issuecomment-328814348
ARG DEBIAN_FRONTEND=noninteractive

# upgrade all
RUN apt-get update && apt-get upgrade -y

# set locale
RUN apt update && apt install locales -y
RUN locale-gen en_US en_US.UTF-8
RUN update-locale LC_ALL=en_US.UTF-8 LANG=en_US.UTF-8
ENV LANG=en_US.UTF-8
RUN locale

# avoid install questions 
# -  Set timezone to default
#    https://techoverflow.net/2019/05/18/how-to-fix-configuring-tzdata-interactive-input-when-building-docker-images/
# -  Set keyboard
# -  curl, gnupg2, lsb-release
RUN apt update && apt install -y \
        tzdata \
        keyboard-configuration \
        gnupg2 \
        lsb-release

# First ensure that the Ubuntu Universe repository is enabled
RUN apt install -y \
        software-properties-common
RUN add-apt-repository universe
        
# Setup ROS2 apt repositories
RUN apt update && apt install -y \
        curl
RUN curl -sSL https://raw.githubusercontent.com/ros/rosdistro/master/ros.key -o /usr/share/keyrings/ros-archive-keyring.gpg

RUN echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/ros-archive-keyring.gpg] http://packages.ros.org/ros2/ubuntu $(. /etc/os-release && echo $UBUNTU_CODENAME) main" | tee /etc/apt/sources.list.d/ros2.list > /dev/null

RUN apt update && apt install -y \
        ros-dev-tools

ARG VERSION=humble
## Install ROS2 ros (ros-base)
RUN apt update && apt install -y \
        ros-${VERSION}-desktop

RUN echo "source /opt/ros/${VERSION}/setup.bash" >> /etc/bash.bashrcapt list
