#! /bin/bash

# https://qiita.com/moris/items/4850d4e19392186e34f0
curl -O https://nodejs.org/dist/v14.10.1/node-v14.10.1-linux-x64.tar.gz
sudo tar --strip-components 1 -xzvf node-v14.10.1-linux-x64.tar.gz -C /usr/local