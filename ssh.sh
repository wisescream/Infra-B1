#!/bin/bash

# Set the source and destination directories
source_dir="/home/kali/backup"
destination_dir="/home/rayane/server"

# Create the backup archive
backup_file="backup$(date +%Y%m%d%H%M%S).tar.gz"
tar -czf "$backup_file" "$source_dir"

# SSH connection details
ssh_user="admin"
ssh_host="192.168.248.129"
ssh_port="22"
ssh_key="/root/.ssh/id_rsa"

# Copy the backup archive to the remote server via SSH
scp -P "$ssh_port" -i "$ssh_key" "$backup_file" "$ssh_user@$ssh_host:$destination_dir"

# Remove the local backup archive
rm "$backup_file"

