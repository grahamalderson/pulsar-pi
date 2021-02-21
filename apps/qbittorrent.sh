#!/bin/bash
docker run --detach --restart unless-stopped \
--name qbittorrent \
--publish 8082:8082 \
--publish 6881:6881 \
--publish 6881:6881/udp \
--volume /home/pi/apps/qbittorrent/config:/config \
--volume /media/pi/files/share/Downloads/qbittorrent:/downloads \
-e PUID=1000 \
-e PGID=1000 \
-e WEBUI_PORT=8082 \
ghcr.io/linuxserver/qbittorrent
