FROM ubuntu:14.04

RUN apt-get update
RUN apt-get install -y nodejs npm

#ADD app.js /data/app/dockerTest
ADD app.js /usr/local/app/
COPY node_modules /usr/local/app/node_modules
#COPY node_modules /data/app/dockerTest/node_modules

WORKDIR /usr/local/app
CMD nodejs app.js
