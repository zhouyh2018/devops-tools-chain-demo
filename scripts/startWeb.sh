#!/bin/bash

# Check whether result container is exist
docker ps |grep result-devops-0
if [ $? -eq 0 ]
then
   docker stop result-devops-0 && docker rm -v result-devops-0
fi

# Start app container with latest test result file
docker run -d --name result-devops-0 -p 9090:80 -v /website-0:/usr/share/nginx/html:ro nginx:alpine
