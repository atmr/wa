#!/bin/bash

ANSIBLE_HOME=$(pwd)/ansible
ANSIBLE_INVENTORY="${ANSIBLE_HOME}/inventory.ini"
ANSIBLE_CONFIG="${ANSIBLE_HOME}/ansible.cfg"
ANSIBLE_HOST_PATTERN_MISMATCH=False

cd /home/vagrant/workdir/ansible/

ANSIBLE_HOST_KEY_CHECKING=False ansible-playbook main-playbook.yml
