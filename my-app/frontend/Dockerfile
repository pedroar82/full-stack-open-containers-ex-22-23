#Stage 1: setup the frontend
FROM node:24 AS setup
WORKDIR /usr/src/app
COPY . .
RUN npm ci

#Stage 3: build
FROM setup AS build
WORKDIR /usr/src/app
RUN npm run build


FROM alpine:3.19
WORKDIR /usr/src/app
COPY --from=build /usr/src/app/dist ./dist