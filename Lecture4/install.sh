#!/bin/bash

sudo apt-get update -yq
sudo apt-get install -yq python-pip tree mc fping apt-transport-https python3-pip python-setuptools 
sudo pip install ansible

cp -arf /home/vagrant/.ssh/ /home/vagrant/workdir/ansible/docker
