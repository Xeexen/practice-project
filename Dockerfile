FROM php:8.2-fpm

# Instala dependencias del sistema
RUN apt-get update && apt-get install -y \
    git curl zip unzip libonig-dev libxml2-dev libzip-dev libpq-dev libpng-dev \
    libjpeg-dev libfreetype6-dev libmcrypt-dev libcurl4-openssl-dev \
    && docker-php-ext-install pdo pdo_mysql zip

# Instala Composer
COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

# Establece directorio de trabajo
WORKDIR /var/www

# Copia los archivos del proyecto
COPY . .

# Instala dependencias PHP
RUN composer install

# Asigna permisos
RUN chown -R www-data:www-data /var/www

EXPOSE 9000
CMD ["php-fpm"]
