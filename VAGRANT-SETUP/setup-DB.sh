echo "[TASK] Install Docker"
apt update -qq >/dev/null 2>&1
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add -
add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
apt update -qq >/dev/null 2>&1
apt install -qq -y docker-ce=5:19.03.10~3-0~ubuntu-focal containerd.io >/dev/null 2>&1


systemctl enable docker
systemctl start docker


echo "[TASK] Run the mongo image"
docker run -d --name worldEvents-container mongo


echo "[TASK] Import data"
cd /vagrant_data
for f in *.json; do

    # mv $f _$f
    docker cp $f worldEvents-container:/usr/src/_$f
    docker exec worldEvents-container mongoimport -d worldEvents -c collection_world_events --file /usr/src/_$f    
  
done
cd ..
