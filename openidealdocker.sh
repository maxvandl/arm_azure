#!/bin/bash
apt-get -y update
sudo apt-get -y install docker-compose
#sudo chmod +x /usr/local/bin/docker-compose
sudo apt-get -y install git 
sudo docker-compose --version
mkdir -p /var/www/openideal_project/
cd /var/www/openideal_project/
git clone https://github.com/SpringStorm5/openideal_project 
cd openideal_project
docker-compose up 
make
