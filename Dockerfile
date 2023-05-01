FROM php:8.1.18-apache as php

COPY index.php /var/www/html/

RUN apt-get update && \
    docker-php-ext-install mysqli && \
    chown -R www-data:www-data /var/www/html/ && \
    chmod -R u=rwx,g=rwx,o=r /var/www/html/

FROM mysql as mysql

COPY redlock-db.sql /docker-entrypoint-initdb.d/

ENV MYSQL_ROOT_PASSWORD=root
