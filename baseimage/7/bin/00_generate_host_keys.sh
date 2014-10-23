#!/bin/bash
set -e
if [[ ! -e /etc/ssh/ssh_host_rsa_key ]]; then
	echo "No SSH host key available. Generating one..."
	export LC_ALL=C
	ssh-keygen -N "" -b 1024 -t rsa -f /etc/ssh/ssh_host_rsa_key
	ssh-keygen -N "" -b 521 -t ecdsa -f /etc/ssh/ssh_host_ecdsa_key
fi
