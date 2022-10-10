#!/bin/bash

echo "install nginx"
sleep 2s
sudo apt install nginx -y >> ~/proxmox-internet.log 2>&1

echo "rm /etc/nginx/sites-enabled/default"
sleep 2s
sudo rm /etc/nginx/sites-enabled/default >> ~/proxmox-internet.log 2>&1

echo "wget https://github.com/simunda/catatan/blob/3563f28b58f76d5b4a83c0a7e95fced236ecc8e8/proxmox.conf"
sleep 2s
https://github.com/simunda/catatan/blob/3563f28b58f76d5b4a83c0a7e95fced236ecc8e8/proxmox.conf -P /etc/nginx/conf.d/ >> ~/proxmox-internet.log 2>&1

echo "nginx -t"
sleep 2s
nginx -t >> ~/proxmox-internet.log 2>&1

echo "systemctl restart nginx"
sleep 2s
systemctl restart nginx

echo "DONE!"
sleep 2s
