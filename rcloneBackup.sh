echo "Backing up wordpress directory to google drive .."

# 2018 08 27 fh: sync is needed, so that old files get delete on google drive

mkdir /tmp/espiraldelser
sudo tar cvf /tmp/espiraldelser/db-data.tar -C /home/admin/ranchokalanWP/espiraldelser/db-data .
sudo tar cvf /tmp/espiraldelser/wp-content.tar -C /home/admin/ranchokalanWP/espiraldelser/wp-content .
rclone sync /tmp/espiraldelser    flogoogle:rclone/espiraldelser/ --retries 5

mkdir /tmp/ranchokalan
sudo tar cvf /tmp/ranchokalan/db-data.tar -C /home/admin/ranchokalanWP/ranchokalan/db-data .
sudo tar cvf /tmp/ranchokalan/wp-content.tar -C /home/admin/ranchokalanWP/ranchokalan/wp-content .
rclone sync /tmp/ranchokalan     flogoogle:rclone/ranchokalan/ --retries 5

