FROM openjdk:11
LABEL maintainer="davesh_sharma"

RUN mkdir /app
WORKDIR /app
COPY java-webserver.jar /app/
EXPOSE 8080
CMD ["java","-jar","java-webserver.jar"]


