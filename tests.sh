#!/bin/bash
if ! [ -x "$(command -v ansible)" ]; then
       echo "Ansible not installed!" >&2
       exit 1
fi

if ! [ -x "$(command -v gh)" ]; then
       echo "gh not installed!" >&2
       exit 1
fi


if ! [[ -f "$HOME/.ssh/id_rsa" ]]; then
	echo "No ssh key found!" >&2
	exit 1
fi

# Writing files to CICD machines isn't so simple
# might even be a security issue
#if ! [[ -f "$HOME/.gitconfig" ]]; then
#	echo "File: .gitconfig not found!" >&2
#	exit 1
#fi
