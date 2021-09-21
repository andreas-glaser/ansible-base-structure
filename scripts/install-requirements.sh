#!/bin/bash

DIR_THIS="$(dirname "$(readlink -f "$0")")"

cd "${DIR_THIS}"/../ || exit
ansible-galaxy collection install -r requirements.yaml
ansible-galaxy role install -r requirements.yaml
