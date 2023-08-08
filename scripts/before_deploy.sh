#!/bin/bash

# Stop the PM2 process if it's running
if pm2 describe hello-world &> /dev/null; then
    pm2 stop hello-world
    pm2 delete hello-world
fi

# Remove the directory contents
rm -rf /home/ubuntu/react/react-hello-world/*

# Navigate to the directory containing build.zip
cd /home/ubuntu/react/react-hello-world

# Check if the build.zip file exists before unzipping
if [ -f build.zip ]; then
    # Unzip the build.zip file
    unzip build.zip
fi
