#!/bin/bash

# create a new directory for the backup files
mkdir ~/backup

# create a new script file for the backup process
touch ~/backup-script.sh

# add your backup commands to the script file
echo "tar -zcf ~/backup/backup.tar.gz /path/to/backup/directory" >> ~/backup-script.sh

# make the script executable
chmod +x ~/backup-script.sh

# create a new cron job
(crontab -l ; echo "0 6 * * 5 ~/backup-script.sh") | crontab -

echo "Cron job created successfully. Your files will be automatically backed up every Friday at 6am."
