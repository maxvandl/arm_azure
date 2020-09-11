#!/bin/bash
apt-get -y update
sudo apt-get -y install  python-dev libffi-dev  gcc libc-dev make
sudo apt-get -y install apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable"
sudo apt-get -y update
sudo apt-get -y install docker-ce
sudo curl -L "https://github.com/docker/compose/releases/download/1.27.1/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
sudo ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose
#sudo chmod +x /usr/local/bin/docker-compose
#sudo apt-get -y install git 
sudo docker-compose --version
mkdir -p /var/www/openideal_project/
cd /var/www/openideal_project/
git clone https://github.com/SpringStorm5/openideal_project 
cd openideal_project
docker-compose up -d
make
