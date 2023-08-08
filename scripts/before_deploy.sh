#!/bin/bash

# Set the HOME environment variable for PM2
export HOME=/etc

# Stop and delete the PM2 process if it's running
if pm2 describe hello-world &> /dev/null; then
    pm2 stop hello-world
    pm2 delete hello-world
fi

# Remove the directory contents
rm -rf /home/ubuntu/react/react-hello-world/*
