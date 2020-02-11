#!/bin/bash

sudo apt-get update -yq
sudo apt-get install -yq python-pip tree mc fping
sudo pip install ansible jmespath

ansible-galaxy install geerlingguy.ntp --roles-path /home/vagrant/workdir/ansible/roles --force && \
ansible-galaxy install geerlingguy.git --roles-path /home/vagrant/workdir/ansible/roles --force && \
ansible-galaxy install singleplatform-eng.users --roles-path /home/vagrant/workdir/ansible/roles --force && \
ansible-galaxy install nickhammond.logrotate --roles-path /home/vagrant/workdir/ansible/roles --force && \
ansible-galaxy install geerlingguy.java --roles-path /home/vagrant/workdir/ansible/roles --force  && \
ansible-galaxy install geerlingguy.apache --roles-path /home/vagrant/workdir/ansible/roles --force   && \
ansible-galaxy install ansible-thoteam.nexus3-oss --roles-path /home/vagrant/workdir/ansible/roles --force   && \
ansible-galaxy install cloudalchemy.prometheus  --roles-path /home/vagrant/workdir/ansible/roles --force
