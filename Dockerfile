FROM ubuntu:14.04

ENV TZ="Asia/Shanghai"

RUN apt-get update;


RUN apt-get install -y software-properties-common python-software-properties;
RUN add-apt-repository ppa:git-core/ppa;

RUN add-apt-repository ppa:ondrej/php;

RUN apt-get update;


RUN apt-get install -y nginx  vim   php5.6  php5.6-redis php5.6-mcrypt php5.6-mongo php5.6-fpm ;
RUN apt-get install -y python python-pip python-dev build-essential ;


RUN pip install -U pip; pip --version;

RUN pip install supervisor;

RUN echo_supervisord_conf > /etc/supervisord.conf;

RUN echo "daemon off;" >> /etc/nginx/nginx.conf

RUN apt-get install -y apt-utils redis-server;

RUN apt-get install -y libsasl2-dev;

RUN pecl install redis-2.2.7;


WORKDIR /root











