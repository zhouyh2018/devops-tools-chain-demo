1.gitlab的安装

sudo docker run --detach \
    --hostname gitlab.example.com \
    --publish 443:443 --publish 80:80 \
    --name gitlab \
    --restart always \
    --volume /srv/gitlab/config:/etc/gitlab \
    --volume /srv/gitlab/logs:/var/log/gitlab \
    --volume /srv/gitlab/data:/var/opt/gitlab \
    gitlab/gitlab-ce

2.Jenkins的安装

docker run -d \
  --rm \
  -p 8081:8080 \
  -v jenkins-data:/var/jenkins_home \
  -v /var/run/docker.sock:/var/run/docker.sock \
  -v "$HOME":/home \
  jenkinsci/blueocean

docker exec -it containerName bash

3.编译及运行工程

cd /var/apps/docker

docker build -t aura/docker .

docker run -d -p 8080:8080 aura/docker
