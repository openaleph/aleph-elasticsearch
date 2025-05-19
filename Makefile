TAG=latest

all: push

build:
	docker build -t openaleph/aleph-elasticsearch:$(TAG) .

run: build
	docker run -ti openaleph/aleph-elasticsearch:$(TAG) bash

exec: build
	docker run -ti -v $(PWD)/secrets:/secrets openaleph/aleph-elasticsearch:$(TAG)

push: build
	docker push openaleph/aleph-elasticsearch:$(TAG)
