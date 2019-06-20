#!/usr/bin/env bash

composer install
cp .env.example .env
chown -R www-data: /var/www

php artisan key:generate
php-fpm
