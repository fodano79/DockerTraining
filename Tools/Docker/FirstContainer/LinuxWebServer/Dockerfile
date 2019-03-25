############################################
# CentOS 7 with Apache
# DockerFile Version: 1.0
############################################

# Base Image
FROM centos:latest
# Maintainer
LABEL Author="Francesco Sodano" \
    Version=1.0

# Image Preparation
# Adding Features
RUN yum -y --setopt=tsflags=nodocs update && \
    yum -y --setopt=tsflags=nodocs install httpd && \
    yum clean all

# Adding Content
ADD Index.html /var/www/html/index.html

# Expose Ports
EXPOSE 80
ENTRYPOINT ["/usr/sbin/httpd", "-D", "FOREGROUND"]