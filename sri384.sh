#!/bin/sh
echo "sha384-`cat $1 | shasum -a 384 | xxd -r -p | base64`"
