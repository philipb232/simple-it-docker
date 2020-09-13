FROM openjdk:8-jre-alpine

ENV SQL_SERVER=simpleit-sql
ENV SQL_TZ=Europe/Berlin
ENV SQL_DB=simpleit
ENV SQL_USER=simpleit

COPY target/simple-it-server.jar /

ENTRYPOINT ["java", "-jar", "simple-it-server.jar"]
