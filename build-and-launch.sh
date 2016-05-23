#!/bin/bash

# lundi 23 mai 2016, 10:07:27 (UTC+0200)

echo
echo Construction du conteneur ...
echo

docker build -t jsxc-openfire .

echo 
echo Lancement du conteneur ...
echo

CTR_ID=`docker run -d jsxc-openfire`

echo
echo "Identifiant du conteneur:"
echo "$CTR_ID"

sleep 1

echo
echo "Informations sur le conteneur:"
docker inspect "$CTR_ID"

