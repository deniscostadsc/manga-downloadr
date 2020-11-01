.PHONY: build download

IMAGE_NAME = manga-downloadr
DOCKER_RUN = docker run -v $(shell pwd):/app -u "$$(id -u):$$(id -g)" -t $(IMAGE_NAME)

build:
	docker build -t $(IMAGE_NAME) .

download: build
	$(DOCKER_RUN) manga-downloadr -u $(MANGA_URL) -d mangas/
