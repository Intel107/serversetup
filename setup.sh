#!/bin/bash

if [ "$EUID" -ne 0 ]
  then echo "Rootként futtasd! (*sudo* sh setup.sh)"
  exit
fi
	echo "update & upgrade"
	sudo apt update && sudo apt upgrade -y
	echo "ssh telepítése"
	sudo apt install openssh-server -y
	echo "git, ansible telepítése..."
	sudo apt install git software-properties-common -y
	sudo apt-add-repository ppa:ansible/ansible -y
	sudo apt update
	sudo apt install ansible
    sudo apt autoclean -y && sudo apt autoremove -y
    read -sp 'Jelszó: 'sqljelszo
    sudo ansible-playbook playbook.yml -i hosts -e mysql_root_password=$sqljelszo