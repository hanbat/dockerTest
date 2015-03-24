FROM ubuntu:14.04

RUN apt-get update
RUN apt-get install -y nodejs npm

ADD app.js /usr/local/app/
COPY node_modules /usr/local/app/node_modules
CMD npm install forever -g
CMD ln -s /usr/bin/nodejs /usr/bin/node

WORKDIR /usr/local/app
VOLUME /data/forever/
CMD forever start -o /data/forever/out.log -e /data/forever/err.log app.js
