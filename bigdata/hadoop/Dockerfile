FROM ubuntu:20.04

LABEL maintainer="snovian@gmail.com"

ARG JAVA_VERSION=8
ARG HADOOP_VERSION=2.10.1

RUN sed -i 's/archive.ubuntu.com/mirrors.aliyun.com/g' /etc/apt/sources.list \
 && sed -i 's/security.ubuntu.com/mirrors.aliyun.com/g' /etc/apt/sources.list \
 && apt-get update \
 && apt-get upgrade -y \
 && apt-get install -y wget gnupg2 lsb-release \
 && apt-get clean all

RUN wget -qO - https://adoptopenjdk.jfrog.io/adoptopenjdk/api/gpg/key/public | apt-key add - \
 && echo "deb https://mirrors.tuna.tsinghua.edu.cn/AdoptOpenJDK/deb $(lsb_release -cs) main" | sed 's/^[ \t]*//g' > /etc/apt/sources.list.d/adoptOpenJDK.list \
 && apt-get update \
 && apt-get upgrade -y \
 && apt-get install -y adoptopenjdk-${JAVA_VERSION}-hotspot openssh-server 

RUN wget https://mirrors.tuna.tsinghua.edu.cn/apache/hadoop/common/hadoop-${HADOOP_VERSION}/hadoop-${HADOOP_VERSION}.tar.gz \
 && tar -zxvf hadoop-${HADOOP_VERSION}.tar.gz \
 && mv hadoop-${HADOOP_VERSION} /usr/local/hadoop \
 && rm hadoop-${HADOOP_VERSION}.tar.gz


ENV JAVA_HOME=/usr/lib/jvm/adoptopenjdk-8-hotspot-amd64

 

