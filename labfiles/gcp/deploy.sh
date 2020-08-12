#! /bin/bash

apt update -y
apt install apache2 -y
chown -R www-data:www-data /var/www/html
systemctl start apache2
systemctl enable apache2
