#!/bin/bash
docker-compose up -d
ansible-playbook playbook/site.yml -i playbook/inventory/prod.yml --ask-vault-pass
docker-compose stop