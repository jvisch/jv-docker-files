# OPTIONS += --progress plain

IMAGE_TAG := jv/pandoc-docker
LINUX_VERSION = 2.17.1.1

all: latest linux

latest:
	docker build --tag $(IMAGE_TAG) $(OPTIONS) . 

linux: 
	docker build --tag $(IMAGE_TAG):$(LINUX_VERSION) $(OPTIONS) --build-arg VERSION=$(LINUX_VERSION) .

clean:
	-docker image rm $(IMAGE_TAG)
	-docker image rm $(IMAGE_TAG):$(LINUX_VERSION)
	-docker image prune -f
	-docker system prune -f