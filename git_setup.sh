#! /bin/bash

# https://qiita.com/sirone/items/2e233ab9697a030f1335
sudo yum -y install wget gcc curl-devel expat-devel gettext-devel openssl-devel zlib-devel perl-ExtUtils-MakeMaker
sudo yum -y remove git
wget https://www.kernel.org/pub/software/scm/git/git-2.30.2.tar.gz
tar -zxf git-2.30.2.tar.gz
cd git-2.30.2
make prefix=/usr/local all
sudo make prefix=/usr/local install
hash -r
cd ..
rm -rf git-2.30.2
rm -rf git-2.30.2.tar.gz
