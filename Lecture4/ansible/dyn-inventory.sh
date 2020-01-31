 #!/bin/bash

cat "[all:vars]
ansible_ssh_port=22
ansible_ssh_user='vagrant'
ansible_ssh_private_key_file='../machines/vm1/private_key'
"
 
CONTAINER=3

for (( i=1; i <= $CONTAINER; i++ ))
do
  #echo "number is $i"
  echo -n "$(sudo docker inspect --format '{{ .Name }}' docker$i | sed 's/\///' ) "
  sudo docker inspect --format '{{ .NetworkSettings.IPAddress }}' docker$i
done
