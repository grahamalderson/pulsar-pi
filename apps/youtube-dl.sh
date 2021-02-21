#!/bin/bash
docker run --detach --restart unless-stopped \
--name youtube-dl \
--publish 8998:17442 \
--volume /home/pi/apps/youtube-dl/appdata:/app/appdata \
--volume /media/pi/files/media/youtube/subscriptions:/app/subscriptions \
--volume /media/pi/files/media/youtube/users:/app/users \
--volume /media/pi/files/media/youtube/audio:/app/audio \
--volume /media/pi/files/media/youtube/video:/app/video \
-e ALLOW_CONFIG_MUTATIONS=TRUE \
tzahi12345/youtubedl-material
