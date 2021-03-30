NAME=springworks
VERSION=1.0.1

.PHONY: all base

base:
	cd base && docker build -t ${NAME}/spark-base:${VERSION} -t ${NAME}/spark-base:latest . && cd ..
