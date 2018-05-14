#!/usr/bin/env bash

cd /home/vagrant
mkdir projects
cd projects
git clone https://github.com/adessoAnsible/example
cd example
ansible-galaxy install -r requirements.yml
ansible-playbook playbook.yml