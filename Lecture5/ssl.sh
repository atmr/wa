#!/bin/bash

openssl req \
-newkey rsa:2048 -nodes -sha256 -keyout certs/nexus.example.com.key \
-x509 -days 365 -out certs/nexus.example.com.crt \
-subj "/C=UA/ST=Kyiv/L=Kyiv/O=WALab/OU=IT/CN=nexus.example.com"

#openssl req -newkey rsa:4096 -nodes -sha256 -keyout
#certs/domain.key -x509 -days 365 -out certs/domain.crt
#$ cp certs/domain.crt certs/ca.crt
