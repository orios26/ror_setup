#!/bin/bash
#make sure to exlude postgres from base and updaes in /etc/yum.repos.d/CentOS-Base.repo before running 
#must be ran with root privileges 

yum install https://download.postgresql.org/pub/repos/yum/11/redhat/rhel-7-x86_64/pgdg-centos11-11-2.noarch.rpm
yum install postgresql11 postgresql11-server
/usr/pgsql-11/bin/postgresql-11-setup initdb

# uncomment listen_addresses and port in /var/lib/pgsql/11/data/postgresql.conf
# modify permissions in /var/lib/pgsql/11/data/pg_hba.conf
#gem install pg -- --with-pg-config=/usr/pgsql-11.1/bin/pg_config
