#!/bin/bash

apt-get update -y

apt-get install apt-transport-https -y
apt-get install ca-certificates -y
apt-get install curl -y
apt-get install gnupg-agent -y
apt-get install software-properties-common -y

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add -

add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"

apt-get update
apt-get install docker-ce docker-ce-cli containerd.io -y

apt-get install docker-compose -y
cd home/ubuntu
git clone https://github.com/PierreGourlat/Terraform-Travis-42.git
cd Terraform-Travis-42/simple-nginx-php-fpm
docker-compose up -d