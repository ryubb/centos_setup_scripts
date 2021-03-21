#! /bin/bash

# docker
# https://zenn.dev/ymasaoka/articles/install-docker-centos-7
yum remove -y docker docker-client docker-client-latest docker-common docker-latest docker-latest-logrotate docker-logrotate docker-engine
yum install -y yum-utils device-mapper-persistent-data lvm2
yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
yum install -y docker-ce docker-ce-cli containerd.io

sudo usermod -aG docker $USER
systemctl start docker
systemctl enable docker

# docker-compose
# https://qiita.com/kichise/items/f8e56c6d2d08eaf4a6a0
sudo curl -L "https://github.com/docker/compose/releases/download/1.27.4/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
sudo ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose