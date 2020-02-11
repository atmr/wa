#!/bin/bash

mkdir -p machines/vm{1..3}

mkdir -p certs
./ssl.sh
cp -fr certs/* ansible/roles/nexus3/files/

vagrant up vm3
vagrant up vm2

cp -fr .vagrant/machines/vm2/virtualbox/private_key  machines/vm2/private_key
cp -fr .vagrant/machines/vm3/virtualbox/private_key  machines/vm3/private_key

vagrant up --no-provision vm1

cp .vagrant/machines/vm1/virtualbox/private_key  machines/vm1/private_key

vagrant provision vm1

mkdir -p certs
./ssl.sh
cp -fr certs/* ansible/roles/ansible-thoteam.nexus3-oss/files/

echo " ****************************************************************"
echo " ******** 	[   Playbook launch   ] 		*******"
echo " ****************************************************************"

vagrant ssh vm1 -c "sudo /home/vagrant/workdir/run_playbook.sh"
