#!/bin/bash 
version=0.1
hadoop_version=2.7

docker build --force-rm -t springwork/hadoop-base-${hadoop_version}-java8:${version} .
