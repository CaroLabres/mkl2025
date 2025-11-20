FROM node:20-slim
LABEL maintainer="it241502@ustp-students.at"

ENV DEBIAN_FRONTEND=noninteractive

RUN apt update && apt upgrade -y

WORKDIR /usr/src/app

RUN npm i -g npm@11 typeorm

COPY package*.json ./

RUN npm ci

COPY . .

RUN npm run build