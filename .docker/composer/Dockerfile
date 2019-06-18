FROM composer:latest

RUN apk --no-cache add shadow && \
    usermod -u 2500 www-data && \
    groupmod -g 2500 www-data

WORKDIR /var/www
