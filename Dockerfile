FROM ubuntu:latest
RUN apt-get update
RUN apt-get install -y nodejs
RUN apt-get install -y npm
RUN npm install -g http-server

ADD index.html /usr/apps/http/index.html
WORKDIR /usr/apps/http/

CMD ["http-server", "-s"]
