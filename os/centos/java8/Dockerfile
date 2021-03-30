FROM springworks/centos

LABEL maintainer="zeyuan dong <zeyuan.dong@outlook.com>"

RUN echo $'[AdoptOpenJDK]\n\
          name=AdoptOpenJDK\n\
          baseurl=https://mirrors.tuna.tsinghua.edu.cn/AdoptOpenJDK/rpm/centos$releasever-$basearch/\n\
          enabled=1\n\
          gpgcheck=1\n\
          gpgkey=https://adoptopenjdk.jfrog.io/adoptopenjdk/api/gpg/key/public\n\
         ' | sed 's/^[ \t]*//g' > /etc/yum.repos.d/adoptopenjdk.repo

RUN yum makecache \
 && yum update -y \
 && echo "yes" | yum install -y adoptopenjdk-8-hotspot

 ENV JAVA_HOME /usr/lib/jvm/adoptopenjdk-8-hotspot
 ENV PATH $JAVA_HOME/bin:$PATH
