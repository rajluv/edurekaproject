# Use the base image devopsedu/webapp
FROM devopsedu/webapp

# Copy your PHP website files into the web server's root directory
COPY website /var/www/html

# Expose port 80 (the default HTTP port)
EXPOSE 80

# Start the web server
#CMD ["apache2ctl", "-D", "FOREGROUND"]
