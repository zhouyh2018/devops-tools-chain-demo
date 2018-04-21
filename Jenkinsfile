env.SCM_URL = "https://github.com/myownsoul/devops-tools-chain-demo.git"
env.IMG_REG = "aura"
env.IMG_NAME = "${env.IMG_REG}/hello-docker"
env.IMG_TAG = "${env.BUILD_NUMBER}"
env.DEV_SERVER = "tcp://127.0.0.1:2375"

node {
       stage 'Clean Workspace'
             deleteDir()

       stage 'Checkout'
             git url: "${env.SCM_URL}"

       stage 'Unit Test'
              sh "mvn test -f docker/pom.xml"

       stage 'Build Jar'
              sh "mvn package -f docker/pom.xml -Dmaven.test.skip=true"

       stage 'Build Image'
              withDockerServer([uri: "${env.DEV_SERVER}"]) {
              sh "docker build -f Dockerfile -t ${env.IMG_NAME}:${env.IMG_TAG} ."
              }

       stage 'Deploy Image'
              withDockerServer([uri: "${env.DEV_SERVER}"]) {
              sh "docker run -d env.IMG_NAME"
              }

       stage 'UI Test'
              echo 'UI Test'
              }
       }
