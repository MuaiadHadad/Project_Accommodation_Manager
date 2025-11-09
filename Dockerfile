# syntax=docker/dockerfile:1

#############################
# Etapa 1 - Dependências PHP
#############################
FROM composer:2 AS vendor
WORKDIR /var/www/html

# Instala as dependências PHP aproveitando a cache entre builds
COPY laravel/composer.json laravel/composer.lock* ./
RUN composer install \
    --no-dev \
    --no-interaction \
    --prefer-dist \
    --optimize-autoloader

# Copia o código da aplicação
COPY laravel/ ./

#############################
# Etapa 2 - Build front-end
#############################
FROM node:20 AS frontend
WORKDIR /var/www/html

COPY laravel/package*.json ./
RUN npm install --no-fund

COPY laravel/resources ./resources
COPY laravel/vite.config.js ./vite.config.js
COPY laravel/public ./public
RUN npm run build

#############################
# Etapa 3 - Runtime Apache + PHP
#############################
FROM php:8.2-apache AS production

# Instala extensões PHP necessárias e ativa o mod_rewrite
RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        git \
        unzip \
        libpng-dev \
        libonig-dev \
        libxml2-dev \
        libzip-dev \
    && docker-php-ext-install pdo pdo_mysql zip gd \
    && a2enmod rewrite \
    && rm -rf /var/lib/apt/lists/*

# Define o diretório público como raiz do Apache
ENV APACHE_DOCUMENT_ROOT=/var/www/html/public
RUN sed -ri -e 's!/var/www/html!${APACHE_DOCUMENT_ROOT}!g' /etc/apache2/sites-available/*.conf \
    && sed -ri -e 's!/var/www/!${APACHE_DOCUMENT_ROOT}!g' /etc/apache2/apache2.conf /etc/apache2/conf-available/*.conf

WORKDIR /var/www/html

# Copia o código PHP e vendors já instalados
COPY --from=vendor /var/www/html ./

# Copia apenas os assets compilados
COPY --from=frontend /var/www/html/public/build ./public/build

# Ajusta permissões para o utilizador do Apache
RUN chown -R www-data:www-data storage bootstrap/cache

EXPOSE 80

# Apache é o entrypoint padrão
CMD ["apache2-foreground"]
