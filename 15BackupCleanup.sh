#!/bin/bash

# Variables
BACKUP_DIR="/backups"
SRC_DIR="/home/user"
DATE=$(date +%Y%m%d)
BACKUP_FILE="$BACKUP_DIR/backup_$DATE.tar.gz"

# Create backup
tar -czf $BACKUP_FILE $SRC_DIR #c - create, Z - zip/compress, f - filename

# Remove backups older than 7 days
#find: Searches for files and directories in a specified location.
#$BACKUP_DIR: The directory where the search is performed.
#-type f: Finds files only (not directories).
#-mtime +7: Finds files modified more than 7 days ago.
#-name *.tar.gz: Matches files with a .tar.gz extension.
#-exec rm {} \;: Executes the rm command to delete each found file. {} is a placeholder for the found file.

find $BACKUP_DIR -type f -mtime +7 -name '*.tar.gz' -exec rm {} \;

echo "Backup and cleanup complete."
