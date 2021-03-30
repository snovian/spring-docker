NAME=springworks
VERSION=1.0.1

.PHONY: all centos java8

centos:
	cd centos && docker build -t ${NAME}/centos:${VERSION} -t ${NAME}/centos:latest . && cd ..


java8:
	cd java8 && docker build -t ${NAME}/centos-java8:${VERSION} -t ${NAME}/centos-java8:latest . && cd ..

all: centos java8
