#!/bin/bash
set -e
set -x

# Install supervisor
yum install -y supervisor
mkdir -p /etc/supervisor/conf.d
cp /build/conf/supervisord.conf /etc/supervisor/conf.d/supervisord.conf

# Install sshd
yum install -y openssh-server
cp /build/conf/sshd_config /etc/ssh/sshd_config
cp /build/bin/00_generate_host_keys.sh /etc/ssh/00_generate_host_keys.sh
chmod 0700 /etc/ssh/00_generate_host_keys.sh

# Install logrotate
yum install -y logrotate

# Install syslogger

# Install cron

# Configure root user keys
mkdir -p /root/.ssh
chmod 700 /root/.ssh
chown root:root /root/.ssh

cp /build/conf/insecure_key.pub /root/.ssh/authorized_keys
chmod 0600 /root/.ssh/authorized_keys

