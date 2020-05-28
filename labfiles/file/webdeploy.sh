#! /bin/bash

sudo chown -R www-data:www-data /var/www/html/bookapp
sudo a2ensite bookapp.conf
sudo systemctl reload apache2
