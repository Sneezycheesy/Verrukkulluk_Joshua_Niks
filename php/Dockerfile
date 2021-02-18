# Import php-apache image to run app
FROM php:7.4-apache

# Set the working directory for the php service
WORKDIR /var/www/html

# Install the mysqli extension, because this is used in the app database.php
RUN docker-php-ext-install mysqli

# Copy project files to working directory so PHP can run them
ADD ./verrukkulluk /var/www/html

# Launch pph
CMD php index.php