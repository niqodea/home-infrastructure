#!/bin/sh

# The books database needs to contain a `metadata.db` file from Calibre
# Unfortunately, the container won't generate it for you if missing
# This script generates one for you
# Ref: https://github.com/linuxserver/docker-calibre-web/issues/30

set -eu

root="$0"
metadata_path="$0/books.plug/metadata.db"

if [ -e "$metadata_path" ]; then
    >&2 echo Found existing metadata file, will not overwrite
    exit 1
fi

wget 'https://github.com/janeczku/calibre-web/raw/0.6.23/library/metadata.db' -O "$metadata_path"
