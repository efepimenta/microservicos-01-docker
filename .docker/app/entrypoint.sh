#!/usr/bin/env bash

composer install

php artisan key:generate
php artisan migrate

chown -R www-data: /var/www

php-fpm