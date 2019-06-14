FROM nginx:1.15.0-alpine

RUN rm /etc/nginx/conf.d/default.conf

COPY ./nginx.conf /etc/nginx/conf.d

RUN apk update && apk add bash

#RUN apk --no-cache add shadow && \
#    usermod -u 1000 nginx && \
#    groupmod -g 1000 nginx
