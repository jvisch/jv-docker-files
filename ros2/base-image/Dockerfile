# jvr/ros2:base-image

FROM ubuntu:focal

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
        curl \
        gnupg2 \
        lsb-release
        
# Setup ROS2 apt repositories
RUN curl -sSL https://raw.githubusercontent.com/ros/rosdistro/master/ros.key  -o /usr/share/keyrings/ros-archive-keyring.gpg
RUN echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/ros-archive-keyring.gpg] http://packages.ros.org/ros2/ubuntu $(lsb_release -cs) main" | tee /etc/apt/sources.list.d/ros2.list > /dev/null

RUN apt update && apt install -y \
        build-essential \
        cmake \
        git \
        libbullet-dev \
        python3-argcomplete \
        python3-colcon-common-extensions \
        python3-flake8 \
        python3-pip \
        python3-pytest-cov \
        python3-rosdep \
        python3-setuptools \
        python3-vcstool \
        wget

# install some pip packages needed for testing
RUN python3 -m pip install -U \
        flake8-blind-except \
        flake8-builtins \
        flake8-class-newline \
        flake8-comprehensions \
        flake8-deprecated \
        flake8-docstrings \
        flake8-import-order \
        flake8-quotes \
        pytest-repeat \
        pytest-rerunfailures \
        pytest
