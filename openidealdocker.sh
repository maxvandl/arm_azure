#!/bin/bash
apt-get -y update
sudo curl -L https://github.com/docker/compose/releases/download/1.21.2/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
sudo apt-get install git -y
docker-compose --version
mkdir -p /var/www/openideal_project/
cd /var/www/openideal_project/
git clone https://github.com/SpringStorm5/openideal_project 
cd openideal_project
docker-compose up 
make