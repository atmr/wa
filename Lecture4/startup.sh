#!/bin/bash

vagrant up

mkdir -p machines/vm1
cp .vagrant/machines/vm1/virtualbox/private_key  machines/vm1/private_key

