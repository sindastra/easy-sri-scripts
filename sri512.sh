#!/bin/sh
echo "sha512-`cat $1 | shasum -a 512 | xxd -r -p | base64`"
