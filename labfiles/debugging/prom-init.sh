#! /bin/bash

SUDO=''
if (( $EUID != 0 )); then
    SUDO='sudo'
fi

$SUDO useradd --no-create-home --shell /bin/false prometheus
$SUDO mkdir /etc/prometheus
$SUDO mkdir /var/lib/prometheus
$SUDO chown prometheus:prometheus /var/lib/prometheus
(cd /tmp/; curl https://github.com/prometheus/prometheus/releases/download/v2.20.0/prometheus-2.20.0.linux-amd64.tar.gz -O)
(cd /tmp/; tar -xvf prometheus-2.20.0.linux-amd64.tar.gz)
$SUDO mv /tmp/prometheus-2.20.0.linux-amd64/console* /etc/prometheus
$SUDO mv /tmp/prometheus-2.20.0.linux-amd64/prometheus.yml /etc/prometheus
$SUDO chown -R prometheus:prometheus /etc/prometheus
$SUDO mv /tmp/prometheus-2.20.0.linux-amd64/prometheus /usr/local/bin/
$SUDO mv /tmp/prometheus-2.20.0.linux-amd64/promtool /usr/local/bin/
$SUDO chown prometheus:prometheus /usr/local/bin/prometheus
$SUDO chown prometheus:prometheus /usr/local/bin/promtool
