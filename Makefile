.PHONY: download

IMAGE_NAME = manga-downloadr
DOCKER_RUN = docker run -v $(shell pwd):/app -u "$$(id -u):$$(id -g)" manga-downloadr

build:
	docker build -t $(IMAGE_NAME) .

download: build
	$(DOCKER_RUN) $(IMAGE_NAME) -u $(MANGA_URL) -d mangas/
