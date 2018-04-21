#!/bin/bash

# Check whether result container is exist
docker ps |grep result-devops
if [ $? -eq 0 ]
then
   docker stop result-devops && docker rm -v result-devops
fi

# Start app container with latest test result file
docker run -d --name result-devops -p 9090:80 -v /website:/usr/share/nginx/html:ro nginx:alpine

