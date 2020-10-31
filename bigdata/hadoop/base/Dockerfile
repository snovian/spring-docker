FROM springwork/ubuntu:latest

MAINTAINER Simon Dong <snovian@gmail.com>

RUN  apt-get install openjdk-8-jdk net-tools curl netcat gnupg libsnappy-dev \
  && apt-get clean \
  && apt-get autoclean \
  && rm -rf /var/lib/opt/lists/* /tmp/* /var/tmp/*

CMD ["/bin/bash"]
