#!/bin/bash
DIR_THIS="$(dirname "$(readlink -f "$0")")"
cd "${DIR_THIS}/.." || exit
lsyncd lsyncd-settings