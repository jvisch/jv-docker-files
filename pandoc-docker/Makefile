# OPTIONS += --progress plain

IMAGE_TAG := jv/pandoc-docker
LATEST_VERSION := 3.9.0.2

all: latest 

latest:
	docker build --tag $(IMAGE_TAG) $(OPTIONS) --build-arg VERSION=$(LATEST_VERSION) . 
	docker build --tag $(IMAGE_TAG):$(LATEST_VERSION) $(OPTIONS) --build-arg VERSION=$(LATEST_VERSION) . 


clean:
	-docker image rm $(IMAGE_TAG)
	-docker image rm $(IMAGE_TAG):$(LATEST_VERSION)
	-docker image prune -f
	-docker system prune -f