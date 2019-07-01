

echo "Backing up zitytripData directory to google drive .."

# 2018 08 27 fh: sync is needed, so that old files get delete on google drive

rclone sync /home/admin/ranchokalanWP/ranchokalan/db-data     flogoogle:rclone/ranchokalan/db-data --retries 5
rclone sync /home/admin/ranchokalanWP/ranchokalan/wp-content  flogoogle:rclone/ranchokalan/wp-content --retries 5

