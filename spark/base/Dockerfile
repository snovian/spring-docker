FROM springworks/centos-java8

MAINTAINER zeyuan dong <zeyuan.dong@outlook.com>


RUN yum install -y openssh-server sudo openssh-clients \
 && echo "root:root" | chpasswd \
 && echo "root    ALL=(ALL)   ALL" >> /etc/sudoers \
 && sed -i 's/UsePAM yes/UsePAM no/g' /etc/ssh/sshd_config \
 && ssh-keygen -t dsa -f /etc/ssh/ssh_host_dsa_keey \ 
 && ssh-keygen -t rsa -f /etc/ssh/ssh_host_rsa_key \
 && mkdir /var/run/sshd

 EXPOSE 22

 CMD ["/usr/sbin/sshd" "-D"]

