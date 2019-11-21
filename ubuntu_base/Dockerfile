FROM ubuntu:18.04

MAINTAINER Simon Dong snovian@outlook.com

ADD authorized_keys /root/authorized_keys
ADD sources.list /etc/apt/sources.list
ADD run.sh /root/run.sh

RUN apt-get update && apt-get upgrade -y && \
    apt-get install -y openssh-server openjdk-8-jdk && \
    mkdir -p /var/run/sshd && \
    echo "StrictHostKeyChecking no" >> /etc/ssh/sshd_config && \ 
    echo "PermitRootLogin yes" >> /etc/ssh/sshd_config && \
    sed -i 's/PermitRootLogin without-password/PermitRootLogin yes/' /etc/ssh/sshd_config && \
    mkdir -p /root/.ssh && ssh-keygen -t rsa -P '' -f /root/.ssh/id_rsa && \
    mv /root/authorized_keys /root/.ssh/authorized_keys && \
    cat /root/.ssh/id_rsa.pub >> /root/.ssh/authorized_keys && chmod -R 700 /root/.ssh \
    

EXPOSE 22

CMD ["/root/run.sh"]

