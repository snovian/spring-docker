FROM springwork/ubuntu:latest

MAINTAINER Simon Dong <snovian@gmail.com>

RUN  apt-get install -y openjdk-8-jdk net-tools curl netcat gnupg libsnappy-dev \
  && apt-get clean \
  && apt-get autoclean \
  && rm -rf /var/lib/opt/lists/* /tmp/* /var/tmp/*

ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/

ENV HADOOP_VERSION 3.2.1
ENV HADOOP_URL https://mirrors.tuna.tsinghua.edu.cn/apache/hadoop/common/hadoop-$HADOOP_VERSION/hadoop-$HADOOP_VERSION.tar.gz

RUN  set -x && curl -fSL "$HADOOP_URL" -o /tmp/hadoop.tar.gz \
  && tar -xvf /tmp/hadoop.tar.gz -C /opt/ \
  && rm /tmp/hadoop.tar.gz

#WORKDIR /opt 
#ADD hadoop-$HADOOP_VERSION.tar.gz .

RUN ln -s /opt/hadoop-$HADOOP_VERSION/etc/hadoop /etc/hadoop
RUN mkdir -p /opt/hadoop-$HADOOP_VERSION/logs 
RUN mkdir /hadoop-data 

ENV HADOOP_HOME /opt/hadoop-$HADOOP_VERSION
ENV HADOOP_CONF /etc/hadoop 
ENV MULTIHOMED_NETWORK=1
ENV USER=root
ENV PATH=$HADOOP_HOME/bin/:$PATH

ADD entrypoint.sh /entrypoint.sh 

RUN chmod a+x /entrypoint.sh 

ENTRYPOINT ["/entrypoint.sh"]

