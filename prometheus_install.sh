#!/bin/bash

echo "Create a prometheus user"
sudo useradd --no-create-home --shell /bin/false prometheus

echo "Download the prometheus"
mkdir -p /opt/data/
cd /opt/data/
wget https://github.com/prometheus/prometheus/releases/download/v2.21.0/prometheus-2.21.0.linux-amd64.tar.gz

echo "Untar the downloaded file"
tar xvf prometheus-*.linux-amd64.tar.gz

echo "copy the file to bin and assign permission for binary"
mkdir /usr/local/bin/prometheus/
sudo cp prometheus-*.linux-amd64/* /usr/local/bin/prometheus/.
sudo chown -r prometheus:prometheus /usr/local/bin/prometheus

echo "remove the tar file"
rm -rf prometheus-*.linux-amd64.tar.gz prometheus-*.linux-amd64

echo "Create a service file"
echo "[Unit]
Description=prometheus
Wants=network-online.target
After=network-online.target

[Service]
User=prometheus
Group=prometheus
Type=simple
ExecStart=/usr/local/bin/prometheus/prometheus

[Install]
WantedBy=multi-user.target" > /etc/systemd/system/prometheus.service

echo "Reload the deamon"
sudo systemctl daemon-reload

echo "Enable prometheus"
sudo systemctl enable prometheus

echo "start prometheus"
sudo systemctl start prometheus

echo "Check prometheusstatus"
sudo systemctl status prometheus

