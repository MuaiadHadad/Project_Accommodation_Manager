# Etapa 1: dependências PHP (Composer)
FROM composer:2 AS vendor
WORKDIR /app
COPY laravel/ ./
RUN composer install --no-dev --optimize-autoloader --prefer-dist

# Etapa 2: build dos activos front-end (Vite)
FROM node:20 AS frontend
WORKDIR /app
COPY --from=vendor /app/package.json ./package.json
RUN npm install
COPY --from=vendor /app/resources ./resources
COPY --from=vendor /app/vite.config.js ./vite.config.js
COPY --from=vendor /app/public ./public
RUN npm run build

# Etapa final: runtime PHP-FPM
FROM php:8.2-fpm

# Instalação de extensões necessárias
RUN apt-get update && apt-get install -y \
    git \
    unzip \
    libpng-dev \
    libonig-dev \
    libxml2-dev \
    libzip-dev \
    zip \
    && docker-php-ext-install pdo pdo_mysql zip gd \
    && apt-get clean && rm -rf /var/lib/apt/lists/*

WORKDIR /var/www/html

# Copia do código fonte
COPY laravel/ ./

# Copia dos vendors e build front-end das etapas anteriores
COPY --from=vendor /app/vendor ./vendor
COPY --from=frontend /app/public/build ./public/build

# Ajuste de permissões para armazenamento e cache
RUN chown -R www-data:www-data storage bootstrap/cache

EXPOSE 8000

CMD ["php", "artisan", "serve", "--host=0.0.0.0", "--port=8000"]
