#!/bin/bash

# https://computingforgeeks.com/how-to-install-postgresql-12-on-centos-7/

sudo yum -y install https://download.postgresql.org/pub/repos/yum/reporpms/EL-7-x86_64/pgdg-redhat-repo-latest.noarch.rpm
sudo yum -y install epel-release yum-utils
sudo yum-config-manager --enable pgdg12
sudo yum -y install postgresql12-server postgresql12

sudo /usr/pgsql-12/bin/postgresql-12-setup initdb
sudo systemctl enable postgresql-12
sudo systemctl start postgresql-12
