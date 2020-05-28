#! /bin/bash

sudo mkdir -p /var/www/html/bookapp
sudo chown -R www-data:www-data /var/www/html/bookapp
sudo a2ensite bookapp.conf
sudo systemctl reload apache2
