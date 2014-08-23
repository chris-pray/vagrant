#!/usr/bin/env bash

sudo apt-get update
sudo apt-get install -y wget
sudo wget --no-check-certificate https://opscode-omnibus-packages.s3.amazonaws.com/ubuntu/12.04/x86_64/chef-server_11.1.4-1_amd64.deb
sudo dpkg -i chef-server_11.1.4-1_amd64.deb
sudo chef-server-ctl reconfigure
