#!/bin/bash
DIR_THIS="$(dirname "$(readlink -f "$0")")"
cd "${DIR_THIS}/.." || exit
cp group_vars/all/vault.yaml group_vars/all/vault-unencrypted.yaml
ansible-vault decrypt group_vars/all/vault-unencrypted.yaml