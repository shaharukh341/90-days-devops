#!/bin/bash
sudo apt update -y
sudo apt install nginx -y
sudo systemctl enable nginx
sudo systemctl start nginx
echo "<h1>Welcome from $(hostname)</h1>" | sudo tee /var/www/html/index.html
