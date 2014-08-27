#!/usr/bin/env bash

sudo apt-get update
sudo apt-get install -y wget
sudo wget --no-check-certificate https://opscode-omnibus-packages.s3.amazonaws.com/ubuntu/12.04/x86_64/chefdk_0.2.0-2_amd64.deb
sudo dpkg -i chefdk_0.2.0-2_amd64.deb
chef verify
echo 'eval "$(chef shell-init bash)"' >> ~/.bashrc
mkdir /home/vagrant/chef-repo
mkdir /home/vagrant/chef-repo/certificates
mkdir /home/vagrant/chef-repo/config
mkdir /home/vagrant/chef-repo/cookbooks
mkdir /home/vagrant/chef-repo/data_bags
mkdir /home/vagrant/chef-repo/environments
mkdir /home/vagrant/chef-repo/roles
mkdir /home/vagrant/chef-repo/.chef
sudo apt-get install -y git
git config --global user.name "Chris Pray"
git config --global user.email "chris.pray530@gmail.com"
git init /home/vagrant/chef-repo
echo '.chef' >> /home/vagrant/chef-repo/.gitignore
echo '10.0.0.101 chefserver01 chefserver01' | sudo tee -a /etc/hosts
