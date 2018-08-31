#!/usr/bin/env bash

apt-add-repository ppa:ansible/ansible -y
apt-get update
apt-get install ansible -y
ansible --version

apt-get install git -y