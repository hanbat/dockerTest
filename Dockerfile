FROM ubuntu:14.04

RUN apt-get update
RUN apt-get install -y nodejs npm

ADD /Users/hanbatkil/dockerTest /data/app/dockerTest
#ADD app.js /var/www/app.js
#ADD package.json /var/www/package.json

WORKDIR /data/app/dockerTest
#RUN npm install

CMD nodejs app.js
