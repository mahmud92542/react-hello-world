#!/bin/bash

# Start the PM2 process for the React app
cd /home/ubuntu/react/react-hello-world
pm2 serve build 3000 --spa --name hello-world &

# Reload Nginx configuration
sudo systemctl reload nginx
