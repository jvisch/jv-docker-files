# OPTIONS += --progress plain

IMAGE_TAG := jv/lua

all: 
	docker build --tag $(IMAGE_TAG) $(OPTIONS) . 

clean:
	-docker image rm $(IMAGE_TAG)
	-docker image prune -f