#!/bin/bash

sudo apt-get update -yq
sudo apt-get install -yq python-pip tree mc fping
sudo pip install ansible

ansible-galaxy install geerlingguy.ntp --roles-path /home/vagrant/.ansible/roles --force && \
ansible-galaxy install geerlingguy.git --roles-path /home/vagrant/.ansible/roles --force && \
ansible-galaxy install singleplatform-eng.users --roles-path /home/vagrant/.ansible/roles --force && \
ansible-galaxy install nickhammond.logrotate --roles-path /home/vagrant/.ansible/roles --force && \
ansible-galaxy install GROG.authorized-key --roles-path /home/vagrant/.ansible/roles --force

cd /home/vagrant/workdir/ansible/ && ANSIBLE_HOST_KEY_CHECKING=False ansible-playbook playbook.yml
