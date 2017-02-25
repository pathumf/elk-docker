#!/bin/bash
echo "[webserver]" > hosts 
ansible-playbook -i loaclhost aws.yml -vvvv | grep '\"public_ip\"' | awk -F: '{print $2}' | sed -e 's/\"/\ /g'  | sed -e 's/\,/\ /g' | sed -e 's/\ //g' >> hosts
