FROM ubuntu:14.04

RUN apt-get update
RUN apt-get install -y curl nodejs npm

ADD app.js /usr/local/app/
COPY node_modules /usr/local/app/node_modules
#RUN npm install forever -g
RUN ln -s /usr/bin/nodejs /usr/bin/node

WORKDIR /usr/local/app
#CMD forever app.js
CMD node app.js
