#!/bin/bash 

if [ ! -f  ~/vyos-raspberrypi/version ]; then 
	>&2  echo "Error finding version file" 
fi

VERSION=`cat ~/vyos-raspberrypi/version`
~/go/bin/github-release release \
	-u nsuan \
	-r vyos-raspberrypi \
	--tag $VERSION \
	--name $VERSION \
	--description "Rolling release $VERSION"
~/go/bin/github-release upload \
	-u nsuan\
	-r vyos-raspberrypi\
	--tag $VERSION\
	--name vyos-bcm2710-rpi-3-b-plus.img\
	--file ~/release/vyos-$VERSION-bcm2710-rpi-3-b-plus.img
~/go/bin/github-release upload \
	-u nsuan\
	-r vyos-raspberrypi\
	--tag $VERSION\
	--name vyos-bcm2710-rpi-3-b.img\
	--file ~/release/vyos-$VERSION-bcm2710-rpi-3-b.img
~/go/bin/github-release upload \
	-u nsuan\
	-r vyos-raspberrypi\
	--tag $VERSION\
	--name vyos-bcm2711-rpi-4-b.img\
	--file ~/release/vyos-$VERSION-bcm2711-rpi-4-b.img
~/go/bin/github-release upload \
	-u nsuan\
	-r vyos-raspberrypi\
	--tag $VERSION\
	--name vyos-bcm2711-rpi-cm4.img\
	--file ~/release/vyos-$VERSION-bcm2711-rpi-cm4.img
