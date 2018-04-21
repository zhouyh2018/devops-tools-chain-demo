#!/bin/bash

# Check whether app container is exist
docker ps |grep hello-devops-0
if [ $? -eq 0 ]
then
   docker stop hello-devops-0 && docker rm -v hello-devops-0
fi

# Start app container with latest image
docker run -d --name hello-devops-0 -p 9080:8080 ${APP_IMG}
