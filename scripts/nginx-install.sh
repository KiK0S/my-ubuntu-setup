#/bin/bash

sudo apt update -y
sudo apt install -y nginx
sudo cp ../templates-private/nginx.conf /etc/nginx

nginx -v