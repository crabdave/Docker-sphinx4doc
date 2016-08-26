
# Pull base image  
FROM centos:latest

MAINTAINER crabdave "calorie.david@gmail.com"  

# Usage: USER [UID]
USER root

# Usage: WORKDIR /path
WORKDIR /root/

# Install python
RUN yum install -y python

# add ez_setup
ADD  ez_setup-0.9.tar.gz /root

# install 
RUN cd /root/ez_setup-0.9/ && python ez_setup.py
RUN easy_install sphinx

# add demo
ADD  demo.rst /root/

# start
# RUN sphinx-quickstart
