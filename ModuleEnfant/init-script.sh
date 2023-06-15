#!/bin/bash

#Installing Docker
sudo apt-get update
curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh
#sudo chown $USER /var/run/docker.sock

#Creating container
sudo docker run -d -p 80:80 --name conteneurnginx cedric69/nginx_umage:latest


#Installing Docker deuxieme méthode
#sudo apt-get remove docker docker-engine docker.io
#sudo apt-get update
#sudo apt-get install -y \
#apt-transport-https \
#ca-certificates \
#curl \
#software-properties-common
#curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
#sudo apt-key fingerprint 0EBFCD88
#sudo add-apt-repository \
#"deb [arch=amd64] https://download.docker.com/linux/ubuntu \
#$(lsb_release -cs) \
#stable"
#sudo apt-get update
#sudo apt-get install docker-ce -y
#sudo usermod -a -G docker $USER
#sudo systemctl enable docker
#sudo systemctl restart docker
