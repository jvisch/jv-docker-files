# galactic
FROM jvr/ros2:base-image

RUN python3 -m pip install -U \
        setuptools

## Install ROS2 ros (ros-base)
ARG ROS_DISTRO=galactic

RUN apt install ros-${ROS_DISTRO}-ros-base -y
RUN echo "source /opt/ros/${ROS_DISTRO}/setup.bash" >> /etc/bash.bashrc
