#!/bin/bash
#simple script to install docker on cetos

yum install -y yum-utils \
device-mapper-persistent-data \
lvm2

yum-config-manager \
--add-repo \
https://download.docker.com/linux/centos/docker-ce.repo

yum install docker-ce