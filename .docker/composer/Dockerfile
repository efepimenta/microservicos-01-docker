FROM composer:latest

RUN apk --no-cache add shadow && \
    usermod -u 1000 www-data && \
    groupmod -g 1000 www-data

WORKDIR /var/www
