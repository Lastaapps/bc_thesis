#!/usr/bin/env bash

if [[ -z "$1" ]]; then
    echo Specify file name
    exit 1
fi

source ./scripts/env.sh

# This option is required to allow access to fonts cache at /var/cache
# --privileged 

# LaTeX
# docker exec -it --privileged "${CONTAINER_NAME}" latexmk -pdf -interaction=nonstopmode -synctex=1 -auxdir=build "$@"
# LuaTeX
docker exec -it --privileged "${CONTAINER_NAME}" latexmk -pdflua -interaction=nonstopmode -synctex=1 -auxdir=build "$@"
# XeLaTeX
# docker exec -it --privileged "${CONTAINER_NAME}" latexmk -pdfxe -interaction=nonstopmode -synctex=1 -auxdir=build "$@"

