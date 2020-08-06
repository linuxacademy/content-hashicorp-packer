#! /bin/bash

SUDO=''
if (( $EUID != 0 )); then
    SUDO='sudo'
fi

$SUDO mv /tmp/prometheus.service /etc/systemd/system/
$SUDO systemctl start prometheus
$SUDO systemctl enable prometheus
