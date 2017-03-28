

# Pull base image
FROM python:2

MAINTAINER crabdave "calorie.david@gmail.com"

# Usage: USER [UID]
USER root

# modify timezone
RUN cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime

#modify Character set

ENV LANG en_US.UTF-8
ENV LANGUAGE en_US.UTF-8
ENV LC_ALL en_US.UTF-8

# Usage: WORKDIR /path
WORKDIR /opt/

# add ez_setup
ADD ez_setup-0.9.tar.gz /opt

# install
RUN cd /opt/ez_setup-0.9/ && python ez_setup.py
RUN easy_install sphinx

# add demo
ADD  demo.rst /opt/

# start interactive in container
# sphinx-quickstart
