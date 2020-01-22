FROM php:7.3-cli

COPY --from=composer /usr/bin/composer /usr/bin/composer

RUN apt-get update && apt-get install -y unzip \
    && composer --no-interaction global --prefer-stable require 'hirak/prestissimo'

ENV COMPOSER_ALLOW_SUPERUSER 1
