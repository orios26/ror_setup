#!/bin/bash
#script to install Ruby, Rails, and NodeJS on rpm distros 
#perform update and upgrade before running the script

set -e 
echo "First lets update & upgrade the system"
yum update -y && yum upgrade -y

gpg --keyserver hkp://pool.sks-keyservers.net:80 --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB

yum install curl -y
curl -sSL https://get.rvm.io | bash -s stable --ruby
source ~/.rvm/scripts/rvm
rvm get stable --autolibs=enable
rvm --default use ruby-2.6.0

curl -sL https://rpm.nodesource.com/setup_10.x | bash -

yum install -y nodejs
yum install gcc g++ make -y

gem update --system
gem install rails -v 5.2.2

#checking rvm path
echo '[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"' >> ~/.bashrc
set +e
source ~/.bashrc
set -e


echo "CHECKING VERSIONS TO VERIFY SUCCESSFUL INSTALL"
ruby --version
rails --version
nodejs --version
