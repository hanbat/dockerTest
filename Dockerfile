FROM ubuntu:14.04

RUN apt-get update
RUN apt-get install -y nodejs npm

ADD app.js /data/app/dockerTest
ADD node_modules /data/app/dockerTest/node_modules

WORKDIR /data/app/dockerTest

CMD nodejs app.js
