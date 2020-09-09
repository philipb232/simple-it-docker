FROM nginx:alpine
RUN apk add openjdk11

ENV SQL_SERVER=simpleit-database
ENV SQL_TZ=Europe/Berlin
ENV SQL_DB=simpleit
ENV SQL_USER=simpleit

COPY nginx.conf /etc/nginx/conf.d/default.conf
COPY target/simple-it-server.jar /simple-it/
COPY dist/simple-it/ /simple-it/client/

CMD nginx && cd /simple-it && java -jar simple-it-server.jar
