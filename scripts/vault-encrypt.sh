#!/bin/bash
DIR_THIS="$(dirname "$(readlink -f "$0")")"
cd "${DIR_THIS}/.." || exit
cp group_vars/all/vault-unencrypted.yaml group_vars/all/vault.yaml
ansible-vault encrypt group_vars/all/vault.yaml