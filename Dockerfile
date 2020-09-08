FROM nginx:alpine
RUN apk add openjdk11
COPY nginx.conf /etc/nginx/conf.d/default.conf
COPY simple-it-server.jar /simple-it/
COPY simple-it-client/ /simple-it/client/
CMD nginx && cd /simple-it && java -jar simple-it-server.jar