#! /bin/bash
#prepare for installs
apt-get -f autoremove -y
apt-get update -y
apt-get upgrade -y

#install requirements
apt-get install apache2 -y

#configure
chown -R www-data:www-data /var/www/html
systemctl start apache2
systemctl enable apache2
