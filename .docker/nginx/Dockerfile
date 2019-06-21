FROM nginx:1.15.0-alpine

RUN rm /etc/nginx/conf.d/default.conf

RUN apk update && apk add --no-cache bash

ENV DOCKERIZE_VERSION v0.6.1
RUN wget https://github.com/jwilder/dockerize/releases/download/$DOCKERIZE_VERSION/dockerize-alpine-linux-amd64-$DOCKERIZE_VERSION.tar.gz \
    && tar -C /usr/local/bin -xzvf dockerize-alpine-linux-amd64-$DOCKERIZE_VERSION.tar.gz \
    && rm dockerize-alpine-linux-amd64-$DOCKERIZE_VERSION.tar.gz

RUN apk --no-cache add shadow && \
    usermod -u 1000 nginx && \
    groupmod -g 1000 nginx

EXPOSE 80
ADD nginx_conf.tmpl /tmp/nginx_conf.tmpl

#ENV SERVICE_NAME=app
#ENV SERVICE_PORT=9000
#CMD dockerize -template ./nginx.conf.tmpl:/etc/nginx/nginx.conf

ENTRYPOINT ["nginx", "-g", "'daemon off;'"]
