#!/bin/bash
set -eo pipefail
shopt -s nullglob

# if command starts with an option, prepend elasticdump
if [ "${1:0:1}" = '-' ]; then
	set -- elasticdump "$@"
fi

exec "$@"
