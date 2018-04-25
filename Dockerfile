FROM php:7.2.4-fpm-alpine

RUN apk --update add postgresql-dev
RUN apk --update add php7-pgsql
RUN docker-php-ext-install pgsql
RUN docker-php-ext-configure pgsql -with-pgsql=/usr/local/pgsql
# RUN kill -USR2 1

EXPOSE 80
EXPOSE 443
