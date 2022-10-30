#!/bin/bash
set -e

SSH_DIR="$HOME/.ssh"

if ! [ -x "$(command -v ansible)" ]; then
	sudo apt update -y
	sudo apt install -y ansible
fi

if ! [[ -f "SSH_DIR/id_rsa" ]]; then
    	mkdir -p "$SSH_DIR"
    	chmod 700 "$SSH_DIR"
    	ssh-keygen -b 4096 -t rsa -f "$SSH_DIR/id_rsa" -N "" -C "USER@HOSTNAME"
    	cat "$SSH_DIR/id_rsa.pub" >> "$SSH_DIR/authorized_keys"
    	chmod 600 "$SSH_DIR/authorized_keys"
fi

ansible-pull -U https://github.com/MarkoM-dot/setup.git local.yaml
