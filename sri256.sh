#!/bin/sh
echo "sha256-`cat $1 | shasum -a 256 | xxd -r -p | base64`"
