#!/bin/bash

#variable 
current_date=$(date)
hostname=$(hostname)
username=$(whoami)

echo "Date: $current_date"
echo "HOSTNAME: $hostname"
echo "USERNAME: $username"

# Disk_usage 
df -h 

#Running_process
ps aux 

#take user input 
echo ""
read -p "Enter a directory name to create: " DIR_NAME

#create direcoty 
mkdir -p "$DIR_NAME"
echo "Directory '$DIR_NAME' created."

FILE_NAME="$DIR_NAME/processes.txt"
touch "$FILE_NAME"

# Store running processes 
ps aux > "$FILE_NAME"

echo "Running processes have been saved to: $FILE_NAME"
