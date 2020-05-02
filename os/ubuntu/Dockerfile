FROM ubuntu:20.04

LABEL maintainer="Simon Dong <snovian@gmail.com>"

ENV TIMEZONE=Asia/Shanghai

RUN  sed -i s/archive.ubuntu.com/mirrors.aliyun.com/g /etc/apt/sources.list \
  && sed -i s/security.ubuntu.com/mirrors.aliyun.com/g /etc/apt/sources.list \
  && apt-get update && apt-get upgrade -y \
  && apt-get install -y wget curl vim tzdata\
  && rm -rf /etc/localtime && echo $TIMEZONE > /etc/timezone \
  && dpkg-reconfigure -f noninteractive tzdata \
  && apt-get clean && apt-get autoclean && rm -rf /var/lib/opt/lists/* /tmp/* /var/tmp/*

CMD ["/bin/bash"]
