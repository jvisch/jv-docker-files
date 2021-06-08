OPTIONS += --progress plain

ROS_DISTRO += foxy
ROS_DISTRO += galactic

all: foxy galactic

$(ROS_DISTRO):
	 docker build --tag jvr/ros2:$@  $(OPTIONS) . --build-arg ROS_DISTRO=$@
	

