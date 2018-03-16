#!/usr/bin/env bash

TEMPLATE_DIR="/root/src"
DEST_DIR="/app/src"
REQUIRED_FILE="${DEST_DIR}/index.js"

if [ ! -f "${REQUIRED_FILE}" ]; then
    cp -a ${TEMPLATE_DIR}/. ${DEST_DIR}/
fi

exec "$@"
