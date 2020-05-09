FROM php:7.0-apache

MAINTAINER VuNT "nguyenthachvu.vn@gmail.com"

RUN set -eux; \
    apt-get update; \
    apt-get upgrade -y; \
    apt-get install -y --no-install-recommends \
            curl \
            libmemcached-dev \
            libz-dev \
            libpq-dev \
            libjpeg-dev \
            libpng-dev \
            libfreetype6-dev \
            libssl-dev \
            libmcrypt-dev \
            imagemagick \
            libmagickwand-dev \
            libonig-dev; \
    rm -rf /var/lib/apt/lists/*

RUN pecl install imagick && docker-php-ext-enable imagick

RUN set -eux; \
    docker-php-ext-install pdo pdo_mysql mysqli; \
    docker-php-ext-configure gd \
            --prefix=/usr \
            --with-jpeg \
            --with-freetype \
            --enable-gd-native-ttf \
            --with-freetype-dir=/usr/include/freetype2 \
            --with-png-dir=/usr/include \
            --with-jpeg-dir=/usr/include \
            ; \
    docker-php-ext-install gd iconv mcrypt mbstring; \
    docker-php-ext-enable gd; \
    php -r 'var_dump(gd_info());'

RUN a2enmod rewrite

EXPOSE 80
