#! /bin/bash

sudo useradd --no-create-home --shell /bin/false node_exporter
tar -xvf /tmp/node-exporter.tar.gz
sudo mv /tmp/node-exporter/node_exporter /usr/local/bin/
sudo chown node_exporter:node_exporter /usr/local/bin/node_exporter
sudo systemctl daemon-reload
sudo systemctl start node_exporter
