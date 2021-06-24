# galactic-ros-base
FROM jvr/ros2:base-image

RUN python3 -m pip install -U \
        setuptools

## Install ROS2 ros (ros-base)
RUN apt update && apt install -y \
        ros-galactic-ros-base

RUN echo "source /opt/ros/galactic/setup.bash" >> /etc/bash.bashrc
