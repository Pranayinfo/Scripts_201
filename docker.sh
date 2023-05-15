#!/usr/bin/bash
docker ps -a
read -p "want to restart: " yes
status=$yes
if [ $status == yes ]
then 
    cd /home/pranay/Docker/Icube
    systemctl restart docker
    docker-compose down
    docker-compose up -d
else
    echo "NO"
fi
