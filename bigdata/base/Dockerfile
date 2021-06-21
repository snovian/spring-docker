FROM debian

LABEL maintainer="Simon Dong <snovian@gmail.com>"

ENV TIMEZONE=Asia/Shanghai

RUN  sed -i s/deb.debian.org/mirrors.aliyun.com/g /etc/apt/sources.list \
  && sed -i s/security.debian.org/mirrors.aliyun.com/g /etc/apt/sources.list \
  && apt-get update && apt-get upgrade -y \
  && apt-get install -y wget curl vim tzdata software-properties-common gnupg2 \
  && rm -rf /etc/localtime && echo $TIMEZONE > /etc/timezone \
  && dpkg-reconfigure -f noninteractive tzdata \


RUN wget -qO - https://adoptopenjdk.jfrog.io/adoptopenjdk/api/gpg/key/public | apt-key add - \
  && add-apt-repository -y http://mirrors.tuna.tsinghua.edu.cn/AdoptOpenJDK/deb \
  && apt-get update && apt-get upgrade \
  && apt-get install adoptopenjdk-8-hotspot \

#install adoptopenJDK


RUN apt-get clean && apt-get autoclean && rm -rf /var/lib/opt/lists/* /tmp/* /var/tmp/* \
