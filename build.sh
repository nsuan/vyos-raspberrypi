#!/bin/bash

cd ~/vyos-pi-builder
sudo docker run -it --privileged -v "$(pwd)":/vyos -v /dev:/dev -w /vyos --sysctl net.ipv6.conf.lo.disable_ipv6=0 vyos/vyos-build:current-arm64 sudo bash -x build-image.sh
