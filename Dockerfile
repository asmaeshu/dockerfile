FROM centos:latest
MAINTAINER google
RUN yum -y install httpd
COPY index.html /var/www/html/index.html
EXPOSE 80
ENTRYPOINT /usr/sbin/httpd -DFOREGROUND
