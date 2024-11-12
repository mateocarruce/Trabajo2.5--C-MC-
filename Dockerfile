# Use an official PHP image
FROM php:8.1-apache

# Copy the index.php file to the Apache root directory
COPY index.php /var/www/html/

# Expose port 80
EXPOSE 80