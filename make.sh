#!/bin/bash

set -e

cd "${0%/*}"

./build.sh

rm -f ../release/*.img

./release.sh

./upload.sh
