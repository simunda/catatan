#!/bin/bash

echo "install nginx"
sleep 2s
sudo apt install nginx -y >> ~/proxmox-internet.log 2>&1

echo "rm /etc/nginx/sites-enabled/default"
sleep 2s
sudo rm /etc/nginx/sites-enabled/default >> ~/proxmox-internet.log 2>&1

echo "wget https://raw.githubusercontent.com/simunda/catatan/main/proxmox.conf"
sleep 2s
wget https://raw.githubusercontent.com/simunda/catatan/main/proxmox.conf -P /etc/nginx/conf.d/ >> ~/proxmox-internet.log 2>&1

echo "nginx -t"
sleep 2s
nginx -t >> ~/proxmox-internet.log 2>&1

echo "systemctl restart nginx"
sleep 2s
systemctl restart nginx

echo "DONE!"
sleep 2s
