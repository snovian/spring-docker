FROM debian

LABEL maintainer="Simon Dong <snovian@gmail.com>"

ARG TIMEZONE=Asia/Shanghai
ARG MIRROR=mirrors.163.com
#ARG MIRROR=mirros.aliyun.com



RUN  DEBIAN_FRONTEND="noninteractive" \
  && sed -i s/deb.debian.org/${MIRROR}/g /etc/apt/sources.list \
  && sed -i s/security.debian.org/${MIRROR}/g /etc/apt/sources.list \
  && apt-get update && apt-get upgrade -y \
  && apt-get install -y wget curl vim tzdata apt-transport-https ca-certificates curl software-properties-common gnupg2 \ 
  && DEBIAN_FRONTEND="noninteractive" TZ="${TIMEZONE}" apt-get install -y tzdata

RUN curl -fsSL https://adoptopenjdk.jfrog.io/adoptopenjdk/api/gpg/key/public | apt-key add - 
RUN add-apt-repository -y http://mirrors.tuna.tsinghua.edu.cn/AdoptOpenJDK/deb \
 && apt-get update && apt-get upgrade -y \
 && apt-get install -y adoptopenjdk-8-hotspot

ENV JAVA_HOME=/usr/lib/jvm/adoptopenjdk-8-hotspot-amd64 
ENV PATH=$PATH:$JAVA_HOME/bin
#install adoptopenJDK


RUN apt-get clean && apt-get autoclean && rm -rf /var/lib/opt/lists/* /tmp/* /var/tmp/* \
