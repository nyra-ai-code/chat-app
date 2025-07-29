FROM php:8.2-apache

# Copy project files
COPY . /var/www/html/

# Set working directory
WORKDIR /var/www/html/

# Enable required Apache modules
RUN docker-php-ext-install mysqli \
 && a2enmod rewrite

# Set DirectoryIndex to index.php
RUN echo "<IfModule mod_dir.c>\nDirectoryIndex index.php index.html\n</IfModule>" >> /etc/apache2/apache2.conf

# Set server name to avoid warnings
RUN echo "ServerName localhost" >> /etc/apache2/apache2.conf
