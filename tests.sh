#!/bin/bash
set -e

if ! [-x "$(command -v ansible)" ]; then
       echo "Ansible not installed!"
       exit 127
fi

if ! [[ -f "$HOME/.ssh" ]]; then
	echo "No .ssh directory found!"
	exit 1
fi

if ! [[ -f "$HOME/.gitconfig" ]]; then
	echo "File: .gitconfig not found!"
	exit 1
fi
