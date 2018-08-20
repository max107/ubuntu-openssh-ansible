all: build push

build:
	docker build -t max107/ubuntu-openssh-ansible .

push:
	docker push max107/ubuntu-openssh-ansible