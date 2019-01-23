#!/bin/bash
#script to install Ruby, Rails, and NodeJS on rpm distros
#perform update and upgrade before running the script
gpg2 --keyserver hkp://pool.sks-keyservers.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB
curl -sSL https://get.rvm.io | bash -s stable --ruby
source ~/.rvm/scripts/rvm
rvm get stable --autolibs=enable
rvm install "ruby-2.6.0"
rvm --default use ruby-2.6.0
curl https://raw.githubusercontent.com/creationix/nvm/v0.13.1/install.sh | bash
source ~/.bash_profile
nvm install v0.11.13
nvm alias default v0.11.13
default -> v0.11.13
gem update --system
gem install rails -v 5.2.2
source ~/.bash_profile

echo "CHECKING VERSIONS TO VERIFY SUCCESSFUL INSTALL"
echo "RUBY:----------------------"
ruby --version
echo "RAILS:---------------------"
rails --version
echo "NODEJS---------------------"
node --version
