#!/bin/bash

# ICT171 Cloud Server Project
# Author: Clinton Narankaik
# Purpose: Check whether Nginx is running

echo "Checking Nginx web server status..."

if systemctl is-active --quiet nginx
then
    echo "Nginx is running successfully."
else
    echo "Nginx is not running."
fi

echo "Health check completed."
