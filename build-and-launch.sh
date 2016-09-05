#!/bin/bash

# lundi 23 mai 2016, 10:07:27 (UTC+0200)

echo
echo "Construct Docker container and launch it"
echo

IMAGE_ID="jsxc-etherpad-openfire"

echo
echo "Building container, please wait ..."
echo

docker build -t "$IMAGE_ID" .

echo 
echo "Launching container, please wait ..."
echo

CTR_ID=`docker run -d "$IMAGE_ID"`

echo
echo "Container ID: "
echo "$CTR_ID"

sleep 1

echo
echo "Informations about container in file 'container_informations.txt'"
docker inspect "$CTR_ID" > container_informations.txt

