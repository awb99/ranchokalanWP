echo "Restoring ranchokalan/espiraldeser wordpress directory from google drive .."

# 2018 08 27 fh: sync is needed, so that old files get delete on google drive

mkdir /tmp/espiraldelser
#rclone copy flogoogle:rclone/espiraldelser/ /tmp/espiraldelser  --retries 5
mkdir /home/florian/Documents/ranchokalanWP/espiraldelser/db-data
mkdir /home/florian/Documents/ranchokalanWP/espiraldelser/wp-content
tar -C /home/florian/Documents/ranchokalanWP/espiraldelser/db-data -xvf /tmp/espiraldelser/db-data.tar 
tar -C /home/florian/Documents/ranchokalanWP/espiraldelser/wp-content -xvf /tmp/espiraldelser/wp-content.tar 

mkdir /tmp/ranchokalan
#rclone copy  flogoogle:rclone/ranchokalan/ /tmp/ranchokalan --retries 5
mkdir /home/florian/Documents/ranchokalanWP/ranchokalan/db-data 
mkdir /home/florian/Documents/ranchokalanWP/ranchokalan/wp-content
tar -C /home/florian/Documents/ranchokalanWP/ranchokalan/db-data -xvf /tmp/ranchokalan/db-data.tar 
tar -C /home/florian/Documents/ranchokalanWP/ranchokalan/wp-content -xvf /tmp/ranchokalan/wp-content.tar

