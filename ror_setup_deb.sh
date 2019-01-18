#!/bin/bash
#script to install Ruby, Rails, and NodeJS on deb distros 
gpg --keyserver hkp://pool.sks-keyservers.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB

apt install curl -y
curl -sSL https://get.rvm.io | bash -s stable --ruby
source /home/$USERNAME/.rvm.scripts/rvm
rvm get stable --autolibs=enable
rvm --default use ruby-2.6.0

curl -sL https://deb.nodesource.com/setup_10.x | bash -

apt install -y nodejs
apt install gcc g++ make

gem update --system
gem install rails -v 5.2.2


