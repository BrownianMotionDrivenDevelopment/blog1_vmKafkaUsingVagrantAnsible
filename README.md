# Create a VM Image With Apache Kafka Configured Using Vagrant and Ansible 

## Overview

The code here serves to illustrate the article of the same name 
[Create a VM Image With Apache Kafka Configured Using Vagrant and Ansible](https://andyboyle.io/2017/02/23/create-a-vm-image-with-apache-kafka-configured-using-vagrant-and-ansible/)

The article is a simple step-by-step process to build a local VM with Apache Kafka preinstalled and configured with a couple of topics already created.

If you follow through the code examples on the page you should arrive at the same files etc.
The only real difference is the helper shell scripts to install and remove Ansible Galaxy roles.

## Wrinkles
*NOTE:* The **installAnsibleGalaxyRoles.sh** script has a small awk/sed hack to get around the failing Ansible task. 
This is perhaps less than ideal, but it works :-) 

Given the content of the article it would be worth running an Ansible task on the host mahcine but I'll leave that for another day.
