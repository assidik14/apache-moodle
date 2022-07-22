FROM php:7.3-apache
COPY moodle-4.0.2 /var/www/html
RUN docker-php-ext-enable opcache
RUN chmod 0777 /var/www/
RUN apt-get update -y && apt-get upgrade -y
RUN apt-get install -y libzip-dev zip libpng-dev libjpeg-dev libwebp-dev libicu-dev libxml2-dev
RUN docker-php-ext-install zip
RUN docker-php-ext-install mysqli
RUN docker-php-ext-install gd
RUN docker-php-ext-install intl
RUN docker-php-ext-install xmlrpc
RUN docker-php-ext-install soap
RUN docker-php-ext-install exif
EXPOSE 80