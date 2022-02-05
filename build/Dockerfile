#Change this
FROM php:7.4-fpm-alpine

#install extension
RUN docker-php-ext-install pdo pdo_mysql

# install extensions that not exist on docker-php-ext-install
COPY --from=mlocati/php-extension-installer /usr/bin/install-php-extensions /usr/local/bin/
RUN install-php-extensions imagick-3.4.4 gd

# install composer
COPY --from=composer:2 /usr/bin/composer /usr/bin/composer

WORKDIR /var/www/html

#create user (non root)
RUN addgroup -g 1000 user && adduser -G user -g user -s /bin/sh -D user

USER user

