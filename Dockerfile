FROM ubuntu:16.04

ENV TZ="Asia/Shanghai"

RUN apt-get update;

RUN apt-get install -y nginx  vim  ;
RUN apt-get install -y python python-pip python-dev build-essential ;


RUN pip install -U pip; pip --version;

RUN pip install supervisor;

RUN echo_supervisord_conf > /etc/supervisord.conf;

RUN echo "daemon off;" >> /etc/nginx/nginx.conf

RUN apt-get install -y apt-utils redis-server;

RUN apt-get install -y libsasl2-dev;

RUN pecl install redis-2.2.7;


WORKDIR /root











