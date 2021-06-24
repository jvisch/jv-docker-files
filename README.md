# jvr-docker

jv-robot docker spul (ROS2 etc.)

## Docker files

In de map `dockerfiles` staan de Dockerfiles om images te maken met
ROS2.

Gebruik:

1.  installeer docker
2.  installeer make
3.  run 'make' er er worden 5 images gemaakt
    1.  jvr/ros2:base-image (based on *ubuntu:focal*)
    2.  jvr/ros2:foxy-ros-base (based on *jvr/ros2:base-image*)
    3.  jvr/ros2:foxy-desktop (based on *jvr/ros2:foxy-ros-base*)
    4.  jvr/ros2:galactic-ros-base (based on *jvr/ros2:base-image*)
    5.  jvr/ros2:galactic-desktop (based on
        *jvr/ros2:galactic-ros-base*)
