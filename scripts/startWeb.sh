#!/bin/bash

# Check whether result container is exist
docker ps |grep result-devops-<TEAM_ID>
if [ $? -eq 0 ]
then
   docker stop result-devops-<TEAM_ID> && docker rm -v result-devops-<TEAM_ID>
fi

# Start app container with latest test result file
docker run -d --name result-devops-<TEAM_ID> -p 909<TEAM_ID>:80 -v /website-<TEAM_ID>:/usr/share/nginx/html nginx:alpine
