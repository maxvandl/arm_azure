#!/bin/bash
sudo apt-add-repository -y ppa:ansible/ansible
sudo apt update
sudo apt install ansible -y
sudo apt install software-properties-common -y
ssh-keygen -f ~/.ssh/id_rsa -P ""
cat ~/.ssh/id_rsa.pub >> ~/.ssh/authorized_keys
sudo chmod og-wx ~/.ssh/authorized_keys 
sudo apt-get install sshpass -y
#ssh-copy-id -i localhost
sshpass -p "6279508Rino5" ssh-copy-id -o StrictHostKeyChecking=no vm@localhost
