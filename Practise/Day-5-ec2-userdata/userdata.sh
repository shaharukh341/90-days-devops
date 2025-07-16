#!/bin/bash
# Update packages
apt-get update -y

# Install Apache2
apt-get install -y apache2

# Start Apache2 service
systemctl start apache2

# Enable Apache2 on boot
systemctl enable apache2

# Add a test HTML page
echo "<h1>Welcome to Day 5 - Apache is running on Ubuntu!</h1>" > /var/www/html/index.html
