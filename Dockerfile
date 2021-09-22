FROM node:14.17.0-alpine3.11 AS build

# FROM node:12-slim


WORKDIR /src/app

COPY package*.json ./


RUN npm install -g @angular/cli
RUN npm install


COPY . .


# Build production app
RUN ng run  itcozmoz-web:prerender



CMD ["node" , "dist/itcozmoz-web/server/main.js"]




