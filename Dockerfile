FROM php:8.2-fpm

USER www-data

COPY cloudlog/ /var/www/html/