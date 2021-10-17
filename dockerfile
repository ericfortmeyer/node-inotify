FROM node:12.10.0-stretch-slim

ENV NPM_CONFIG_LOGLEVEL warn

WORKDIR /usr/src/inotify
COPY . .

RUN apt update \
    && apt upgrade -y \
    && apt install -y python \
    && apt install -y build-essential

RUN npm install node-gyp@8.2.0
