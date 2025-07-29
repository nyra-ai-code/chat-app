FROM php:8.2-apache

# Enable Apache mod_rewrite
RUN a2enmod rewrite

# Copy project files to Apache server directory
COPY . /var/www/html/

# Set working directory
WORKDIR /var/www/html/

# Permissions (optional but helpful)
RUN chown -R www-data:www-data /var/www/html \
    && chmod -R 755 /var/www/html
