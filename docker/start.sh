#!/bin/bash

# Corre migraciones si es necesario (opcional)
# php artisan migrate --force

# Inicia PHP-FPM y NGINX
php-fpm -D
nginx -g "daemon off;"
