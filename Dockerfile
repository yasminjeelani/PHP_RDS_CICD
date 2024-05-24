# Use the official PHP image
FROM php:7.4-apache

# Copy application files to the container
COPY . /var/www/html/

# Install MySQLi extension
RUN docker-php-ext-install mysqli
