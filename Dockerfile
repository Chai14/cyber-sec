# Use a base image with PHP
FROM php:7.4

# Install Apache and other dependencies
RUN apt-get update \
    && apt-get install -y apache2 \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# Set working directory
WORKDIR /var/www/html

# Copy bWAPP code into the container
COPY . .

# Set permissions (adjust as needed)
RUN chown -R www-data:www-data .

# Expose port 80
EXPOSE 80

# Start Apache in the foreground
CMD ["apache2ctl", "-D", "FOREGROUND"]
