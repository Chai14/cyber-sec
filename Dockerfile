# Use a base image with PHP and Apache
FROM php:7.4-apache

# Set working directory
WORKDIR /var/www/html

# Copy bWAPP code into the container
COPY . .

# Set permissions (adjust as needed)
RUN chown -R www-data:www-data .

# Expose port 80
EXPOSE 80

# Start Apache in the foreground
CMD ["apache2-foreground"]
