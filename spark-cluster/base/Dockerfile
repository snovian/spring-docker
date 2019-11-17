FROM adoptopenjdk/openjdk8:latest

LABEL maintainer="Simon Dong snovian@gmail.com"

ARG SPARK_VERSION=2.4.4
ARG HADOOP_VERSION=2.7
ARG SPARK_FILE="spark-${SPARK_VERSION}-bin-hadoop${HADOOP_VERSION}"

WORKDIR spark
RUN \
  curl -LOv http://mirrors.tuna.tsinghua.edu.cn/apache/spark/spark-2.4.4/${SPARK_FILE}.tgz && \
 # curl -LOv http://192.168.1.110:8000/${SPARK_FILE}.tgz && \
  tar xvzf ${SPARK_FILE}.tgz && \
  rm -rf ${SPARK_FILE}.tgz && \
  mv ${SPARK_FILE}/* ./ && \ 
  rm -rf ${SPARK_FILE}

ENV SPARK_HOME="/spark" PATH=$SPARK_HOME/bin:$SPARK_HOME/sbin:$PATH
