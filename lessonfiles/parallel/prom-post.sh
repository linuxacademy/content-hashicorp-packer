#! /bin/bash

sudo mv /tmp/prometheus.service /etc/systemd/system/
sudo systemctl start prometheus
sudo systemctl enable prometheus
