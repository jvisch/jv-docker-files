# OPTIONS += --progress plain

IMAGE_TAG := galactic-desktop

all: 
	docker build --tag jvr/ros2:$(IMAGE_TAG)  $(OPTIONS) . 

clean:
	-docker image rm jvr/ros2:$(IMAGE_TAG)
	-docker image prune -f