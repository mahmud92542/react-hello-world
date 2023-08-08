#!/bin/bash

# Start the PM2 process for the React app
cd /home/ubuntu/react/react-hello-world
pm2 restart hello-world &

# Reload Nginx configuration
sudo systemctl reload nginx
