FROM ubuntu:14.04
MAINTAINER sharad <sharad.aggarwal@tothenew.com>
RUN apt-get update
RUN apt-get install -y openssh-server
RUN mkdir /var/run/sshd
RUN echo 'root:screencast' | chpasswd
RUN sed -i 's/PermitRootLogin without-password/PermitRootLogin yes/' /etc/ssh/sshd_config
CMD ["/usr/sbin/sshd","-D')
EXPOSE 22
