#!/bin/bash

if [ "$EUID" -ne 0 ]
  then echo "Please run as root as we are installing roles to /etc"
  exit 1
fi

sudo ansible-galaxy remove ansible-kafka
sudo ansible-galaxy remove AnsibleShipyard.ansible-zookeeper

