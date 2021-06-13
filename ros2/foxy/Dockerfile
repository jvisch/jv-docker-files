# foxy
FROM jvr/ros2:base-image

## Additional packages (extentions on base-image)

RUN apt update && apt install -y \
        libbullet-dev

# install Fast-RTPS dependencies
RUN apt update && apt install -y \
        libasio-dev \
        libtinyxml2-dev
# install Cyclone DDS dependencies
RUN apt update && apt install -y \
        libcunit1-dev

## Install ROS2 ros (ros-base)
ARG ROS_DISTRO=foxy

RUN apt install ros-${ROS_DISTRO}-ros-base -y
RUN echo "source /opt/ros/${ROS_DISTRO}/setup.bash" >> /etc/bash.bashrc
