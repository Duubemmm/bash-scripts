#!/bin/bash

echo "Which folder do you want to back up?"
read folder_name
current_date=$(date +%Y-%m-%d)
backup_folder="${folder_name}_${current_date}.tar.gz"

if [ -d "$folder_name" ];
then
 tar -czf "$backup_folder"  "$folder_name"
 echo "Backup created: $backup_folder"
else
 echo "Error:Folder '$folder_name' does not exist"
exit 1
fi



