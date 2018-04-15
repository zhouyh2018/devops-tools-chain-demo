# windows版安装（docker官网上要求PC需要支持虚拟化技术）：

### 带有Hyper-V的64位Windows 10 Pro(docker for windows):

https://docs.docker.com/docker-for-windows/install/

安装文件：

https://download.docker.com/win/stable/Docker%20for%20Windows%20Installer.exe

### 其他版本的Windows(Docker Toolbox for Windows)：
###### 因本次为入门演示，Docker Toolbox for Windows完全够用

https://docs.docker.com/toolbox/toolbox_install_windows/

安装文件：

https://download.docker.com/win/stable/DockerToolbox.exe

-----------------------------------------------------

Docker官方建议将Docker运行在Linux操作系统上。

有时间/能力的同学可以尝试将docker运行到Linux上（针对docker的操作没有区别，只是体验更好而已）

1.安装虚拟机

virtualbox安装文件：

https://download.virtualbox.org/virtualbox/5.2.8/VirtualBox-5.2.8-121009-Win.exe

virtualbox使用手册：

https://download.virtualbox.org/virtualbox/5.2.8/UserManual.pdf

2.安装Fedora(可以安装其他同学们熟悉的Linux)

https://www.linuxidc.com/Linux/2017-11/148640.htm   (文中用到的虚拟机是VMware，virtualbox操作类似)

安装文件

https://download.fedoraproject.org/pub/fedora/linux/releases/27/Server/x86_64/iso/Fedora-Server-dvd-x86_64-27-1.6.iso

3.安装docker

CentOS：

https://docs.docker.com/install/linux/docker-ce/centos/

Fedora：

https://docs.docker.com/install/linux/docker-ce/fedora/

# docker 镜像的下载：（此次演示主要会用到Gitlab、Jenkins、blueocean，为了节省时间，希望同学们能提前把镜像下载好）
docker pull gitlab/gitlab-ce

docker pull jenkinsci/blueocean

docker pull jenkins
