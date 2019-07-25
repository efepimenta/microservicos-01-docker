#!/usr/bin/env bash

php artisan key:generate
php artisan config:cache
php artisan migrate

