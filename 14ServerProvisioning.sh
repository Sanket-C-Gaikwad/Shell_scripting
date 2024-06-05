#!/bin/bash

# Update and install necessary packages

apt-get update
apt-get update -y

apt-get install -y apache2 mysql-server php


#Enable and start services

systemctl enable apache2
systemctl start apache2

systemctl enable mysql
systemctl start mysql

echo "Server provisioning complete."

#systemctl is a command-line utility in Linux used to interact with the systemd service manager
#sudo systemctl start service_name
#sudo systemctl stop service_name
#sudo systemctl restart service_name
#sudo systemctl enable service_name
#sudo systemctl disable service_name
#sudo systemctl reload service_name
#sudo systemctl status service_name
