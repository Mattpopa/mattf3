#!/bin/bash
sudo apt-get update; sudo apt-get install -y nodejs npm 
pushd /home/ubuntu/app && sudo npm install express && nodejs app.js &
