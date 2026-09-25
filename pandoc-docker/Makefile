# OPTIONS += --progress plain

IMAGE_TAG := jv/pandoc-docker
LATEST_VERSION := 3.11

all: latest 

latest:
	docker build --tag $(IMAGE_TAG) $(OPTIONS) --build-arg VERSION=$(LATEST_VERSION) . 


clean:
	-docker image rm $(IMAGE_TAG)
	-docker image prune -f
	-docker system prune -f