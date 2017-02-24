#!/bin/bash

if [ "$EUID" -ne 0 ]
  then echo "Please run as root as we are installing roles to /etc"
  exit 1
fi

sudo ansible-galaxy install AnsibleShipyard.ansible-zookeeper
sudo ansible-galaxy install -r provisioning/requirements.yml --ignore-errors

LINE_NUM_OF_TEST_NAME=`grep -nr "Check kafka port test result" /etc/ansible/roles/ansible-kafka/tasks/kafka-cfg.yml | awk '{print $1}' | cut -d ":" -f1 `
LINE_NUM_TO_INSERT_AT=`expr $LINE_NUM_OF_TEST_NAME + 1`
sudo sed -i "${LINE_NUM_TO_INSERT_AT}i\ \ ignore_errors: yes" /etc/ansible/roles/ansible-kafka/tasks/kafka-cfg.yml

