#! /bin/bash

sudo hostnamectl set-hostname $HOSTNAME
sudo apt install apache2 php7.4 mysql-server-8.0 -y
sudo systemctl start apache2 mysql
sudo systemctl enable apache2 mysql
sudo a2dissite 000-default.conf
