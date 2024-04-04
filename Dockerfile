FROM php:8.2-fpm

COPY docker-php-entrypoint /usr/local/bin/

RUN chmod +x /usr/local/bin/docker-php-entrypoint && \
    docker-php-ext-install mysqli mbstring xml openssl curl && \
    docker-php-ext-enable mysqli mbstring xml openssl curl

USER www-data

COPY cloudlog/ /var/www/cloudlog
