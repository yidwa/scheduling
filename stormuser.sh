#!/bin/bash

cd /home
sudo groupadd -g 53001 storm
sudo mkdir -p /home
sudo useradd -u 53001 -g 53001 -d /home/storm -s /bin/bash storm -c "Storm service account"
sudo chmod 700 /home/storm
sudo passwd storm
