#!/usr/bin/bash

# RUN THIS IF YOU HAVE TO ADD SUDO BEFORE DOCKER COMMANDS
# https://docs.docker.com/engine/install/linux-postinstall/

# sudo groupadd docker
# sudo usermod -aG docker ${USER}
# su -s ${USER}

docker stop worldEvents-container
docker rm worldEvents-container

docker run -d --name worldEvents-container mongo

cd ../DATABASE
for f in *.json; do

    # https://www.cyberciti.biz/faq/linuxunix-move-file-starting-with-a-dash/
    docker cp -- $f worldEvents-container:/usr/src/_$f 
    docker exec worldEvents-container mongoimport -d worldEvents -c collection_world_events --file /usr/src/_$f
  
done


# create new image based on the container
# docker commit worldEvents-container iem22/new_worldEvents-container:v1
# but docer dommit won't ssave the data 