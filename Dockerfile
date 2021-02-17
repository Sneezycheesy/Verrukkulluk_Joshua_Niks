FROM php:7.4-apache
WORKDIR /var/www/html

ADD . /var/www/html
CMD ["php", "index.php"]