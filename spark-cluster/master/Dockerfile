FROM snovian/spark-cluster

LABEL maintainer "Simon Dong snovian@gmail.com"

COPY master.sh /

RUN chmod +x /master.sh

ENV SPARK_MASTER_PORT 7077
ENV SPART_MASTER_WEB_PORT 8080
ENV SPARK_HOME=/spark
ENV SPARK_MASTER_LOG ${SPARK_HOME}/logs

EXPOSE 8080 7077 6066

CMD ["/bin/bash","/master.sh"]
