FROM node:latest
MAINTAINER Mikel Carozzi<me@mikelcarozzi.cl>
RUN mkdir /App
EXPOSE 1337
ADD ./App/app.js /App
ADD ./App/package.json /App
CMD chown -R node:node /App
WORKDIR /App
RUN npm install
USER node
CMD ["/usr/local/bin/npm", "run", "start"]
