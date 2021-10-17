FROM node:16.11.1-buster-slim

ENV NPM_CONFIG_LOGLEVEL warn

RUN apt update \
    && apt upgrade -y \
    && apt install -y python3 \
    && apt install -y build-essential

WORKDIR /usr/src/inotify
COPY . .

RUN npm install
