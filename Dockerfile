FROM php:5.6.28-fpm

ENV TZ="Asia/Shanghai"

RUN apt-get update;

RUN apt-get install -y nginx  vim  ;
RUN apt-get install -y python python-pip python-dev build-essential ;


RUN pip install --upgrade pip;pip install supervisor;echo_supervisor_conf > /etc/supervisord.conf;

RUN echo "daemon off;" >> /etc/nginx/nginx.conf



WORKDIR /root











