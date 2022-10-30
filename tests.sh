#!/bin/bash
if ! [ -x "$(command -v ansible)" ]; then
       echo "Ansible not installed!" >&2
       exit 1
fi

if ! [[ -f "$HOME/.ssh" ]]; then
	echo "No .ssh directory found!" >&2
	exit 1
fi

if ! [[ -f "$HOME/.gitconfig" ]]; then
	echo "File: .gitconfig not found!" >&2
	exit 1
fi
