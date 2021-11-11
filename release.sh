#!/bin/bash

VERSION=`cat ~/vyos-pi-builder/vyos-build/build/version`


mv ~/vyos-pi-builder/vyos-bcm2710-rpi-3-b-plus.img ~/release/vyos-$VERSION-bcm2710-rpi-3-b-plus.img
mv ~/vyos-pi-builder/vyos-bcm2710-rpi-3-b.img ~/release/vyos-$VERSION-bcm2710-rpi-3-b.img
mv ~/vyos-pi-builder/vyos-bcm2711-rpi-4-b.img ~/release/vyos-$VERSION-bcm2711-rpi-4-b.img
mv ~/vyos-pi-builder/vyos-bcm2711-rpi-cm4.img ~/release/vyos-$VERSION-bcm2711-rpi-cm4.img

cd ~/vyos-raspberrypi

cp ~/vyos-pi-builder/vyos-build/build/version ./
git add version
git commit -m "updated version to $VERSION"
git tag $VERSION
git push --tags
