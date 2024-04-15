FROM php:7.4-apache
RUN apt-get update && \
    apt-get install -y libpng-dev && \
    docker-php-ext-install pdo pdo_mysql gd
COPY index.php /var/www/html/
COPY get-index-meta-data.php /var/www/html/
EXPOSE 80
CMD ["apache2-foreground"]