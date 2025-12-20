.PHONY: all build clean

# usage: make build
# usage: make clean

IMAGE=dxjoke/tectonic-docker
MOUNT_DIR=$(shell pwd)

all: build

build:
	docker run --rm -v "$(MOUNT_DIR):/usr/src/tex" -w /usr/src/tex $(IMAGE) tectonic main.tex

clean:
	rm -f main.pdf
