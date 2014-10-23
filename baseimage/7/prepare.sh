#!/bin/bash
set -e
export LC_ALL=C
set -x
export INITRD=no
mkdir -p /etc/container_environment
echo -n no > /etc/container_environment/INITRD
yum install -y epel-release deltarpm
yum upgrade -y
