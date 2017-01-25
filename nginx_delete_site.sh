#!/bin/sh

sudo rm -rf /etc/nginx/sites-enabled/$1.conf
sudo rm -rf /etc/nginx/sites-available/$1.conf

#delete the line from the /etc/hosts

#restart nginx
sudo /etc/init.d/nginx restart
