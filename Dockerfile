FROM php:8.2-fpm

COPY docker-php-entrypoint /usr/local/bin/

RUN chmod +x /usr/local/bin/docker-php-entrypoint && \
    apt update && apt install -y libxml2 && apt autoclean && \
    docker-php-ext-install mysqli xml openssl curl && \
    docker-php-ext-enable mysqli xml openssl curl

USER www-data

COPY cloudlog/ /var/www/cloudlog
