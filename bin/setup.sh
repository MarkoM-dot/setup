#!/bin/bash
set -e

SSH_DIR="$HOME/.ssh"

if ! [-x "$(command -v ansible)" ]; then
	sudo apt update -y
	sudo apt install -y ansible
fi

if ! [[ -f "SSH_DIR/id_ed25519" ]]; then
	mkdir -p "$SSH_DIR"
	chmod 700 "$SSH_DIR"
	ssh-keygen -t ed25519 -N "" -C "USER@HOSTNAME"
	cat "$SSH_DIR/id_ed25519.pub" >> "$SSH/authorized_keys"
	chmod 600 "$SSH_DIR/authorized_keys"
fi
