#! /bin/bash

sudo useradd --no-create-home --shell /bin/false prometheus
sudo mkdir /etc/prometheus
sudo mkdir /var/lib/prometheus
sudo chown prometheus:prometheus /var/lib/prometheus
(cd /tmp/; curl -sL https://github.com/prometheus/prometheus/releases/download/v2.20.0/prometheus-2.20.0.linux-amd64.tar.gz -O)
(cd /tmp/; tar -xvf prometheus-2.20.0.linux-amd64.tar.gz)
sudo mv /tmp/prometheus-2.20.0.linux-amd64/console* /etc/prometheus
sudo mv /tmp/prometheus-2.20.0.linux-amd64/prometheus.yml /etc/prometheus
sudo chown -R prometheus:prometheus /etc/prometheus
sudo mv /tmp/prometheus-2.20.0.linux-amd64/prometheus /usr/local/bin/
sudo mv /tmp/prometheus-2.20.0.linux-amd64/promtool /usr/local/bin/
sudo chown prometheus:prometheus /usr/local/bin/prometheus
sudo chown prometheus:prometheus /usr/local/bin/promtool
