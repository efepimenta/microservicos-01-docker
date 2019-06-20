FROM php:7.3.6-fpm-alpine3.9

RUN apk update && apk add bash mysql-client
RUN docker-php-ext-install pdo pdo_mysql

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

RUN apk --no-cache add shadow && \
    usermod -u 1000 www-data && \
    groupmod -g 1000 www-data && \
    chown www-data: /var/www -R

COPY ./ /var/www

WORKDIR /var/www

EXPOSE 9000

ENTRYPOINT ["php-fpm"]
