#!/bin/bash

# Navigate to the project directory
cd /root/my_bots/football_mp || {
    echo "Directory not found: /root/my_bots/football_mp"
    exit 1
}

# Fetch the latest changes from the remote repository
git fetch

# Pull the latest changes
git pull

#Restart service
sudo systemctl restart football_bot.service
