#!/bin/bash

ssh-keygen -R "$1"

ssh -o StrictHostKeyChecking=accept-new root@"$1" -t "apt install -y gnupg2"
ssh -o StrictHostKeyChecking=accept-new root@"$1" -t "echo 'deb http://ppa.launchpad.net/ansible/ansible/ubuntu focal main' > /etc/apt/sources.list.d/ansible.list"
ssh -o StrictHostKeyChecking=accept-new root@"$1" -t "apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 93C4A3FD7BB9C367"
ssh -o StrictHostKeyChecking=accept-new root@"$1" -t "apt-get update -y && apt-get dist-upgrade -y && apt-get install -y python3 ansible && apt-get autoremove -y"
