#! /bin/bash

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add
sudo apt-key fingerprint 0EBFCD88
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable"
sudo apt-get install docker-ce -y
sudo usermod -aG docker ubuntu
curl -sL https://deb.nodesource.com/setup_10.x -o nodesource_setup.sh
sudo apt-get install nodejs -y
rm nodesource_setup.sh
git clone https://github.com/linuxacademy/content-devops-monitoring-app.git /home/ubuntu/app
sudo docker build -t application /home/ubuntu/app
