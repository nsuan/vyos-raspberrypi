#!/bin/bash

set -e

cd "${0%/*}"

./build.sh

rm ../release/*.img

./release.sh

./upload.sh
