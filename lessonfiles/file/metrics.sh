#! /bin/bash

sudo useradd --no-create-home --shell /bin/false node_exporter
tar -xvf /tmp/node-exporter.tar.gz 
sudo mv /home/ubuntu/node_exporter-1.0.0.linux-amd64/node_exporter /usr/local/bin/
sudo chown node_exporter:node_exporter /usr/local/bin/node_exporter
sudo mv /tmp/node_exporter.service /etc/systemd/system/node_exporter.service
sudo systemctl start node_exporter
sudo systemctl enable node_exporter
rm /tmp/node-exporter.tar.gz
rm -rf /home/ubuntu/node_exporter-1.0.0.linux-amd64/
