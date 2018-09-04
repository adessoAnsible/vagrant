#!/usr/bin/env bash

sed -i -e 's~ch.archive.ubuntu.com/ubuntu/~de.archive.ubuntu.com/ubuntu/~' /etc/apt/sources.list

apt-add-repository ppa:ansible/ansible -y
apt-get update
apt-get install ansible -y
ansible --version

apt-get install git -y