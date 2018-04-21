#!/bin/bash

# Check whether app container is exist
docker ps |grep hello-devops
if [ $? -eq 0 ]
then
   docker stop hello-devops && docker rm -v hello-devops
fi

# Start app container with latest image
docker run -d --name hello-devops -p 9080:8080 ${APP_IMG}
