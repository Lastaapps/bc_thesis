#!/usr/bin/env bash

if [[ $(pwd) != $(readlink -f "$(pwd)") ]]; then
    echo "You are in a symlinked dir"
    echo "Fix with: cd $(readlink -f .)"
    exit 1
fi

echo "Starting as $(whoami) - $(id -u):$(id -g)"
MY_UID="$(id -u)" MY_GID="$(id -g)" docker compose up

