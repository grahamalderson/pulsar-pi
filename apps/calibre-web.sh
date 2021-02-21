#!/bin/bash
docker run --detach --restart unless-stopped \
--name calibre-web \
--publish 8083:8083 \
--volume /home/pi/apps/calibre-web/config:/config \
--volume /mnt/files/media/books:/books \
-e PUID=1000 \
-e PGID=1000 \
-e DOCKER_MODS=linuxserver/calibre-web:calibre \
linuxserver/calibre-web
