#!/bin/bash

# Update the system
sudo apt update
sudo apt upgrade -y

# Install necessary packages
sudo apt install apache2 -y

# Start Apache server
sudo service apache2 start

# Enable Apache to start on boot
sudo systemctl enable apache2

# Configure server name
sudo echo "ServerName ynov-projet" >> /etc/apache2/apache2.conf

# Configure firewall to allow HTTP traffic
sudo ufw allow 'Apache'

# Restart Apache server
sudo service apache2 restart

# Display server status and IP address
sudo service apache2 status
hostname -I

