#!/usr/bin/env bash

cd /home/vagrant
mkdir projects
cd projects
git clone https://${GIT_USERNAME}:${GIT_PASSWORD}@${REPOSITORY} setup
cd setup
ansible-galaxy install -r requirements.yml
ansible-playbook playbook.yml