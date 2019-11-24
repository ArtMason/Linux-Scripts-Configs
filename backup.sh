#! /bin/bash

# This is a backup script

# This command backs up my home/artmason directory
#
rsync -aAXv --delete --exclude='Nextcloud/*' /home/artmason/ /home/artmason/Nextcloud/Linux_Backup/ >> /home/artmason/logs/backup.log 
#
# Below to log any errors
#
2>> /home/artmason/logs/error.log
##
#
# This command backs up the /etc directory below root
#
rsync -aAXv --delete /etc/ /home/artmason/Nextcloud/Linux_Backup/ >> /home/artmason/logs/backup2.log
#
# Now to deal with errors
#
2>> /home/artmason/logs/error.log
#
### Back Script Complete

