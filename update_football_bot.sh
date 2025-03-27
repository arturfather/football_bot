#!/bin/bash

# Navigate to the project directory
cd /root/my_bots/football_bot || {
    echo "Directory not found: /root/my_bots/football_bot"
    exit 1
}

# Fetch the latest changes from the remote repository
git fetch

# Pull the latest changes
git pull

#Restart service
sudo systemctl restart football.service

