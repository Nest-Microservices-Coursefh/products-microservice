# FROM node:21-alpine3.19
FROM node:18.20-alpine

WORKDIR /usr/src/app

COPY package.json ./
COPY package-lock.json ./


RUN npm install

COPY . .

RUN npx prisma generate


EXPOSE 3001