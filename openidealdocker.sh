#!/bin/bash
apt-get -y update
sudo apt-get install docker-compose -y
#sudo chmod +x /usr/local/bin/docker-compose
sudo apt-get install git -y
sudo docker-compose --version
mkdir -p /var/www/openideal_project/
cd /var/www/openideal_project/
git clone https://github.com/SpringStorm5/openideal_project 
cd openideal_project
docker-compose up 
make
