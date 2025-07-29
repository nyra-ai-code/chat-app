FROM php:8.1-apache

# Enable mod_rewrite (optional, for routing)
RUN a2enmod rewrite

# Copy your code to /var/www/html
COPY . /var/www/html/

# Optional: Set working directory (recommended)
WORKDIR /var/www/html

# Give proper permissions (optional)
RUN chown -R www-data:www-data /var/www/html
