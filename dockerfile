# Use the base image from devopsedu/webapp
FROM devopsedu/webapp

# Install PHP and Apache web server
RUN apt-get update && \
    apt-get install -y php apache2 && \
    rm -rf /var/lib/apt/lists/*

# Copy your PHP website files to the container
COPY ./your-php-website /var/www/html/

# Expose port 80 for HTTP traffic (if not already exposed in devopsedu/webapp)
#EXPOSE 80

# Start the Apache web server
CMD ["apache2ctl", "-D", "FOREGROUND"]
