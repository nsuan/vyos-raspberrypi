#!/bin/bash

set -e

source ~/.token

cd "${0%/*}"

./build.sh

rm -f ../release/*.img

./release.sh

./upload.sh
