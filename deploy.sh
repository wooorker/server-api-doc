#!/bin/bash

# git pull
git pull origin master

# generate api doc
cd ./apib && ./snowboard html -i ./v1/index.apib -o ./v1/index.html

# kill old mock api process
sudo kill $(ps -aux | grep "snowboard" | awk '{print $2}' | head -n 1)

# new mock api
nohup sudo ./snowboard mock -i ./v1/index.apib -b 'api-mock.smartwork.mob:8080' &
