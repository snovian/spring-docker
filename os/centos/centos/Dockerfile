FROM centos
LABEL maintainer="zeyuan dong <zeyuan.dong@outlook.com>"

RUN sed -e 's|^mirrorlist=|#mirrorlist=|g' \
        -e 's|^#baseurl=http://mirror.centos.org|baseurl=https://mirrors.tuna.tsinghua.edu.cn|g' \
        -i.bak \
        /etc/yum.repos.d/CentOS-*.repo
#
#RUN echo $'[AdoptOpenJDK]\n\
#          name=AdoptOpenJDK\n\
#          baseurl=https://mirrors.tuna.tsinghua.edu.cn/AdoptOpenJDK/rpm/centos$releasever-$basearch/\n\
#          enabled=1\n\
#          gpgcheck=1\n\
#          gpgkey=https://adoptopenjdk.jfrog.io/adoptopenjdk/api/gpg/key/public\n\
#          ' | sed 's/^[ \t]*//g' > /etc/yum.repos.d/adoptopenjdk.repo 
#
#RUN echo $'[gitlab-ce]\n\
#          name=Gitlab CE Repository\n\
#          baseurl=https://mirrors.tuna.tsinghua.edu.cn/gitlab-ce/yum/el$releasever/\n\
#          gpgcheck=0\n\
#          enabled=1\n\
#          ' | sed 's/^[ \t]*//g' > /etc/yum.repos.d/gitlab-ce.repo
#
#RUN echo $'[mongodb-org]\n\
#          name=MongoDB Repository\n\
#          baseurl=https://mirrors.tuna.tsinghua.edu.cn/mongodb/yum/el$releasever/\n\
#          gpgcheck=0\n\
#          enabled=1\n\
#          ' | sed 's/^[ \t]*//g' > /etc/yum.repos.d/mongodb.repo
#
#RUN echo $'[mysql-8.0-community]\n\
#          name=MySQL 8.0 Community Server\n\
#          baseurl=https://mirrors.tuna.tsinghua.edu.cn/mysql/yum/mysql-8.0-community-el7-$basearch/\n\
#          enabled=1\n\
#          gpgcheck=1\n\
#          gpgkey=https://repo.mysql.com/RPM-GPG-KEY-mysql\n\
#          ' | sed 's/^[ \t]*//g' > /etc/yum.repos.d/mysql.rep 

RUN echo $'LANG=en_US.UTF-8\n\
           LC_ALL=en_US.UTF-8\n\
           LANGUAGE=en_US.UTF-8\n\
          ' | sed 's/^[ \t]*//g' > /etc/environment


RUN yum makecache \
 && yum update -y \
 && yum install -y vim \
 && yum clean all \
 && cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime

CMD [/bin/bash]
