#!/bin/bash

apt update -yq &&  apt install openssh-server python sudo -yq
service ssh start

useradd -m -s /bin/bash -G sudo,adm vagrant -p '$6$MVsiHddG$MjQWCik8ecpDHfDaGhFoQmZGjRNDuw6tA0n6A5EwVgniraXFuG4mX/L11klTG2lY/XPh8/oZNy6GvMorjWYI7/'

cp -ar /volume/.ssh/ /home/vagrant/
chown -R vagrant:vagrant /home/vagrant/.ssh/*
