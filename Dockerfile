FROM php:8.2-fpm

# 🧰 Instala dependencias del sistema
RUN apt-get update && apt-get install -y \
    git curl zip unzip libonig-dev libxml2-dev libzip-dev libpq-dev libpng-dev \
    libjpeg-dev libfreetype6-dev libmcrypt-dev libcurl4-openssl-dev \
    npm nodejs \
    && docker-php-ext-install pdo pdo_mysql zip

# 🧪 Instala Composer
COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

# 📁 Establece directorio de trabajo
WORKDIR /var/www

# 🔒 Copia solo lo necesario para instalar dependencias primero
COPY composer.json composer.lock ./

# 🧰 Copia archivo .env si lo tienes (asegúrate que exista o hazlo opcional)
COPY .env .env

# 🧩 Instala dependencias de PHP sin scripts todavía
RUN composer install --no-dev --optimize-autoloader --no-scripts

# 📁 Copia el resto del proyecto
COPY . .

# 🚀 Corre scripts de optimización de Laravel
RUN composer run-script post-autoload-dump \
    && php artisan config:cache \
    && php artisan route:cache \
    && php artisan view:cache \
    && php artisan optimize \
    && php artisan storage:link || true

# 🛠️ Instala frontend (Vite)
RUN npm install && npm run build

# 🔑 Genera clave de la app (seguro hacerlo aquí si no hay .env con key)
RUN php artisan key:generate || true

# 📦 Permisos correctos para Laravel
RUN chown -R www-data:www-data /var/www

# 📡 Exponer el puerto que usa PHP-FPM
# EXPOSE 9000

# 🚀 Comando de inicio
CMD ["php-fpm"]
