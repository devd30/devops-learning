FROM golang:alpine
LABEL maintainer="davesh_sharma"

RUN mkdir /app
WORKDIR /app
COPY golang-webserver /app/
EXPOSE 8080
ENTRYPOINT ./golang-webserver


