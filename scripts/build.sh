#!/usr/bin/env bash

if [[ -z "$1" ]]; then
    echo Specify file name
    exit 1
fi

docker exec -it nac_env latexmk -pdf -interaction=nonstopmode -synctex=1 -auxdir=build "$1"
