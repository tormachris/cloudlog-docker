FROM php:8.2-fpm

USER www-data

COPY cloudlog/ /var/www/cloudlog

CMD ["cp", "/var/www/cloudlog", "/var/www/html", ";", "php-fpm"]