TAG = $(shell cat tag)

all: build

build: elasticdump

elasticdump: elasticdump.in tag
	docker build --tag=$(TAG) .
	sed -e s,@@TAG@@,$(TAG), elasticdump.in > elasticdump
	chmod +x elasticdump
