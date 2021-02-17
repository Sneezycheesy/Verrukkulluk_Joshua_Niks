FROM php:7.4-apache
WORKDIR /var/www/html

RUN docker-php-ext-install mysqli

ADD . /var/www/html
RUN php index.php