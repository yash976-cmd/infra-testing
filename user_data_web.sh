#!/bin/bash
yum update -y
amazon-linux-extras install nginx1 -y
systemctl enable nginx
echo "<h1>Welcome to the HA Web Tier</h1>" > /usr/share/nginx/html/index.html
systemctl start nginx