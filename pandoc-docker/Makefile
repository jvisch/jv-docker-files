# OPTIONS += --progress plain

IMAGE_TAG := jv/pandoc-docker

all: latest 

latest:
	docker build --tag $(IMAGE_TAG) $(OPTIONS) . 


clean:
	-docker image rm $(IMAGE_TAG)
	-docker image prune -f
	-docker system prune -f