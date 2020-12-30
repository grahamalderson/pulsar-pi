#!/bin/bash
docker run --detach --restart unless-stopped \
--name jellyfin \
--publish 8096:8096 \
--volume /media/pi/usb-drive/apps/jellyfin/config:/config \
--volume /media/pi/usb-drive/media:/data \
--volume /opt/vc/lib:/opt/vc/lib \
--device /dev/vcsm:/dev/vcsm \
--device /dev/vchiq:/dev/vchiq \
--device /dev/video10:/dev/video10 \
--device /dev/video10:/dev/video11 \
--device /dev/video10:/dev/video12 \
-e PUID=1000 \
-e PGID=1000 \
linuxserver/jellyfin:bionic