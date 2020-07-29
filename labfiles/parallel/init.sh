#! /bin/bash

SUDO=''
if (( $EUID != 0 )); then
    SUDO='sudo'
fi

$SUDO apt update && $SUDO apt upgrade -y
$SUDO apt install apache2 -y
$SUDO mkdir -p /var/www/html/bookapp
$SUDO mv /tmp/bookapp/* /var/www/html/bookapp/
$SUDO mv /tmp/bookapp.conf /etc/apache2/sites-available/
$SUDO chown -R www-data:www-data /var/www/html/bookapp
$SUDO a2dissite 000-default.conf
$SUDO a2ensite bookapp.conf
$SUDO systemctl start apache2
$SUDO systemctl enable apache2
