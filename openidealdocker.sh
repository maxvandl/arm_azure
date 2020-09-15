#!/bin/bash
apt-get -y update
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable"
sudo apt-get -y update
sudo apt-get -y install  python-dev libffi-dev  gcc libc-dev 
sudo apt-get -y install apt-transport-https ca-certificates curl software-properties-common
sudo apt-get -y install make
sudo apt-get -y install make-guile
sudo apt-get -y install build-essential
sudo apt-get -y install docker-ce
sudo apt-get -y install curl php-cli php-mbstring git unzip wget python-pip apache2-utils
sudo apt-get -y install docker-compose
sudo apt-get -y install php-xml php-mbstring php7.2-gd
sudo curl -L "https://github.com/docker/compose/releases/download/1.27.1/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
sudo ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose
cd ~
curl -sS https://getcomposer.org/installer -o composer-setup.php
sudo php composer-setup.php --install-dir=/usr/local/bin --filename=composer
#COMPOSER_HOME=/usr/local/bin/composer
export COMPOSER_HOME=/usr/local/bin/composer
composer
#sudo chmod +x /usr/local/bin/docker-compose
#sudo apt-get -y install git 
sudo docker-compose --version
mkdir -p /var/www/openideal_project/
cd /var/www/openideal_project/
git clone https://github.com/SpringStorm5/openideal_project
cd openideal_project
touch composer.log
/usr/local/bin/composer create-project istolar/openideal_project  /var/www/openideal_project/openideal_project/test2 --stability=dev &> composer.log
cd /var/www/openideal_project/openideal_project/test2
composer require --dev drush/drush
cp /var/www/openideal_project/openideal_project/Makefile .
cp /var/www/openideal_project/openideal_project/docker-compose.yml .
sudo chown -R vm:vm .
sudo docker-compose up -d 
while timeout -k 70 60 sudo make &> make.log; [ $? = 124 ]
do sleep 30  # Pause before retry
done
sleep 60
sudo make &> make1.log
