# OPTIONS += --progress plain

IMAGE_TAG := humble

all: 
	docker build --tag jv/ros2:$(IMAGE_TAG)  $(OPTIONS) . 

clean:
	-docker image rm jv/ros2:$(IMAGE_TAG)
	-docker image prune -f