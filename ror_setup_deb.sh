#!/bin/bash
#script to install Ruby, Rails, and NodeJS on deb distros 

sudo apt install curl -y
command curl -sSL https://rvm.io/pkuczynski.asc | gpg --import -
curl -sSL https://get.rvm.io | bash -s stable --ruby
source /home/$USER/.rvm/scripts/rvm
rvm install 2.5.1
rvm --default use ruby-2.5.1

curl -sL https://deb.nodesource.com/setup_10.x -o nodesource_setup.sh
sudo bash nodesource_setup.sh

sudo apt install -y nodejs
sudo apt install gcc g++ make -y

gem update --system
gem install rails -v 5.2.1

sudo apt install postgresql postgresql-contrib -y
sudo apt-get install libpq-dev -y


echo "*************CHECKING VERSIONS********************"
echo "RAILS"
rails --version
echo "RUBY"
ruby --version
echo "NODEJS"
nodejs --version
sudo su - postgres -c "SELECT version();"
