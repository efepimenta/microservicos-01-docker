FROM efepimenta/laravel_app:latest

RUN apk update && apk add bash mysql-client
RUN docker-php-ext-install pdo pdo_mysql

#RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

WORKDIR /var/www

RUN apk --no-cache add shadow && \
    usermod -u 2500 www-data && \
    groupmod -g 2500 www-data

EXPOSE 9000

ENTRYPOINT ["php-fpm"]
