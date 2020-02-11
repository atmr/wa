# WebACDM

== Lecture4 ==

./startup.sh


Use  ansible-docker-dynamic-inventory script
https://github.com/tektutor/ansible-docker-dynamic-inventory

```
vagrant@vm1:~/workdir/ansible$ sudo ./dynamic_inventory.py
{
    "4d96d496792f": {
        "hosts": [
            "172.17.0.2"
        ],
        "vars": {
            "ansible_become_password": "vagrant",
            "ansible_host": "172.17.0.2",
            "ansible_port": "22",
            "ansible_user": "vagrant"
        }
    },
    "b78b5de1bb86": {
        "hosts": [
            "172.17.0.4"
        ],
        "vars": {
            "ansible_become_password": "vagrant",
            "ansible_host": "172.17.0.4",
            "ansible_port": "22",
            "ansible_user": "vagrant"
        }
    },
    "bc49191f730a": {
        "hosts": [
            "172.17.0.3"
        ],
        "vars": {
            "ansible_become_password": "vagrant",
            "ansible_host": "172.17.0.3",
            "ansible_port": "22",
            "ansible_user": "vagrant"
        }
    }
}
```
