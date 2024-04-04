FROM php:8.2-fpm

COPY docker-php-entrypoint /usr/local/bin/

USER www-data

COPY cloudlog/ /var/www/cloudlog
