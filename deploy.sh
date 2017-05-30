#!/bin/bash

# git pull
git pull origin master

# generate api doc
cd ./apib && snowboard html -i ./v1/index.apib -o ./v1/index.html

# mock api
snowboard mock -i ./v1/index.apib -b 'api-mock.smartwork.mob:8080'
