#!/usr/bin/env bash

# Install additional tools
apt-get update && apt-get install -y vim tree

# Customise the terminal command prompt
printf "export PS1='\\[\\e[3;36m\\]\${PWD#/workspaces/} ->\\[\\e[0m\\] '\n" >> $HOME/.bashrc
export PS1='\[\e[3;36m\]${PWD#/workspaces/} ->\[\e[0m\] '

# Update Nextflow
nextflow self-update
nextflow -version

# Install Python packages for omics practice
pip install -r /workspaces/pnu/requirements.txt

cat /usr/local/etc/vscode-dev-containers/first-run-notice.txt
