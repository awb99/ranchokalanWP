#!/bin/bash

# Header
line="# [ zitytrip data backup ]"
(crontab -u root -l; echo "$line" ) | crontab -u root -

# at 3:45  upload files to google drive
line="45 3 * * * cd /home/cititrip/zitytripDocker/admin && ./rcloneZitytripDataBackup.sh"
(crontab -u root -l; echo "$line" ) | crontab -u root -


# at 1:45  upload files via rsync
line="45 3 * * * cd /home/cititrip/zitytripDocker/admin && ./rsyncPassports.sh"
(crontab -u root -l; echo "$line" ) | crontab -u root -

