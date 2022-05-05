FROM php:8.1.5-apache-bullseye
LABEL maintainer="me@muyiafan.com"
RUN docker-php-source extract \
      && docker-php-ext-install pdo pdo_mysql \
      && docker-php-source delete
COPY app.conf /etc/apache2/sites-enabled/000-default.conf
