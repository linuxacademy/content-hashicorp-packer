#! /bin/bash

sudo mkdir -p /var/www/html/bookbinge
sudo chown -R www-data:www-data /var/www/html/bookbinge
sudo a2ensite bookbinge.conf
sudo systemctl reload apache2
