#!/bin/bash

# remove installed ansible
sudo apt remove ansible*

sudo apt update


echo 'Installing dependencies'

sudo apt install software-properties-common -y

echo 'adding repo'

sudo apt-add-repository ppa:ansible/ansible -y

echo 'update the cache'

sudo apt update

echo 'Installing ansible'

sudo apt install ansible -y

ansible --version

echo $?
