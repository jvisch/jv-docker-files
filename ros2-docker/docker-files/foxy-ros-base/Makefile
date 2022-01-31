# OPTIONS += --progress plain

IMAGE_TAG := foxy-ros-base

all: 
	docker build --tag jvr/ros2:$(IMAGE_TAG)  $(OPTIONS) . 

clean:
	-docker image rm jvr/ros2:$(IMAGE_TAG)
	-docker image prune -f