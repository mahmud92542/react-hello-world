#!/bin/bash

# Stop the PM2 process
pm2 stop hello-world

# Delete the PM2 process
pm2 delete hello-world

# Remove the directory contents
rm -rf /home/ubuntu/react/react-hello-world/*

# Navigate to the directory containing build.zip
cd /home/ubuntu/react/react-hello-world
