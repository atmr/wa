#!/bin/bash

apt update -yq &&  apt install openssh-server -yq

service ssh start

useradd -m -s /bin/bash -G sudo vagrant

cp -ar /volume/.ssh/ /home/vagrant/

chown -R vagrant:vagrant /home/vagrant/.ssh/*

