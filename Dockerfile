FROM openjdk:8-jdk-alpine
VOLUME /tmp
COPY /target/gs-rest-service-0.1.0.jar  app.jar
EXPOSE 8880
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-Dserver.port=8880","-jar","/app.jar"]

