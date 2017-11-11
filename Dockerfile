# Dockerfile that modifies centos:centos6 to update, include Apache Web
# Server and OpenSSH Server, exposing the appropriate ports

FROM centos:centos6
MAINTAINER dufus@gmail.com

RUN yum upgrade -y
RUN yum install -y httpd
RUN yum install -y openssh-server
EXPOSE 22 80
