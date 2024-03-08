#!/bin/bash

printf "${WHITE} >> Instalando Docker...\n"
ip_atual=$(curl -s http://checkip.amazonaws.com)
sudo apt-get install -y apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
sudo apt-get update -y
sudo apt-get install -y docker-ce
sudo usermod -aG docker $(whoami)
docker network create proxy