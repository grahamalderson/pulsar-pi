#!/bin/bash
docker run --detach --restart unless-stopped \
--name murmur \
--publish 64738:64738 \
--publish 64738:64738/udp \
--volume /media/pi/usb-drive/apps/murmur/conf:/opt/mumble/conf \
--volume /media/pi/usb-drive/apps/murmur/data:/opt/mumble/data \
magicalex/mumble:latest
