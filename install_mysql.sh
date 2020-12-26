#!/usr/bin/env bash

sudo apt install gnupg2
wget https://repo.percona.com/apt/percona-release_latest.$(lsb_release -sc)_all.deb
sudo dpkg -i percona-release_latest.$(lsb_release -sc)_all.deb
sudo percona-release setup ps80
sudo apt install -y percona-server-server
echo "create database phpbb;" | mysql -uroot -p 
