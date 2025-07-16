#!/bin/bash
apt-get update -y
apt-get install -y apache2
systemctl start apache2
systemctl enable apache2
echo "<h1>Welcome to Day 6 - Apache is running (Module + Remote State)!</h1>" > /var/www/html/index.html
