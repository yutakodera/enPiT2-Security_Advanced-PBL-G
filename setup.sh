#!/bin/bash

sudo apt update && sudo apt upgrade -y
sudo apt install vim docker docker-compose mysql-client g++ libmysql++-dev -y

CONTAINER_NAME=mysql_host
sudo docker-compose up -d
sudo docker ps -a
sudo docker exec $CONTAINER_NAME cat /etc/hosts 

echo "Check whether mysql host is surely getting up and you can connect as 'attacker' with the following command or not:"
echo "mysql -h {IP ADDRESS} -u attacker -p"
echo "  {IP ADDRESS} should be like 172.xx.0.2"
