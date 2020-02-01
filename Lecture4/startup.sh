#!/bin/bash

vagrant up

mkdir -p machines/vm1
cp .vagrant/machines/vm1/virtualbox/private_key  machines/vm1/private_key

echo " ***** [Launch docker containers using playbook] *****"
vagrant ssh vm1 -c "cd /home/vagrant/workdir/ansible/ && ANSIBLE_HOST_KEY_CHECKING=False ansible-playbook ./playbook.yml"

echo " ***** [Check docker dynamic inventory] ******"
vagrant ssh vm1 -c "cd /home/vagrant/workdir/ansible/ && sudo ANSIBLE_HOST_KEY_CHECKING=False ansible-playbook --private-key /home/vagrant/workdir/machines/vm1/private_key -i ./dynamic_inventory.py docker-playbook.yml"
