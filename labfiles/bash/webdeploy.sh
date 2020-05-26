#! /bin/bash

git clone https://github.com/linuxacademy/content-hashicorp-packer.git /tmp/files
sudo mkdir -p /var/www/html/bookbinge
sudo mv /tmp/files/sample-website/* /var/www/html/bookbinge/
sudo chown -R www-data:www-data /var/www/html/bookbinge
sudo mv /tmp/files/labfiles/bash/bookbinge.conf /etc/apache2/sites-available/
sudo a2ensite bookbinge.conf
sudo systemctl reload apache2
sudo rm -rf /tmp/files
