#!/bin/bash

#clean and copy files
rm -rf ~/app/Dockerfile ~/app/app.js
cp -a ~/tmp/Dockerfile ~/app
cp -a ~/tmp/app.js ~/app
rm -rf ~/tmp/Dockerfile ~/tmp/app.js
cd app

#Suppression de l'environnement et des ressources
docker stop dumb-app-docker
docker rm dumb-app-docker
docker rmi dumb-app-serv:v1

#Création de l'image docker puis lancement du docker
docker build -t dumb-app-serv:v1 .
docker run -d -p 80:8080 --name dumb-app-docker dumb-app-serv:v1
