#!/bin/bash

# Check whether app container is exist
docker ps |grep hello-devops-<TEAM_ID>
if [ $? -eq 0 ]
then
   docker stop hello-devops-<TEAM_ID> && docker rm -v hello-devops-<TEAM_ID>
fi

# Start app container with latest image
docker run -d --name hello-devops-<TEAM_ID> -p 908<TEAM_ID>:8080 ${APP_IMG}
