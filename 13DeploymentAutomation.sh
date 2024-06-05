#!/bin/bash

#varibales

APP_DIR="/var/www/html/myapp"
GIT_REPO="GIT LINK"

#Deploying app
cd $APP_DIR
git pull $GIT_REPO

systemctl restart nginx #or apache2

echo "Deployment completed"



