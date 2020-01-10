#!/bin/bash

vagrant up

mkdir -p machines/vm{1..3}
cp .vagrant/machines/vm1/virtualbox/private_key  machines/vm1/private_key
cp .vagrant/machines/vm2/virtualbox/private_key  machines/vm2/private_key

#vagrant ssh vm1 -c "ansible-galaxy install geerlingguy.ntp"
