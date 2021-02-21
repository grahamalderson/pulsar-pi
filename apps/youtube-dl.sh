#!/bin/bash
docker run --detach --restart unless-stopped \
--name youtube-dl \
--publish 8998:17442 \
--volume /home/pi/apps/youtube-dl/appdata:/app/appdata \
--volume /mnt/files/media/youtube/subscriptions:/app/subscriptions \
--volume /mnt/files/media/youtube/users:/app/users \
--volume /mnt/files/media/youtube/audio:/app/audio \
--volume /mnt/files/media/youtube/video:/app/video \
-e ALLOW_CONFIG_MUTATIONS=TRUE \
tzahi12345/youtubedl-material
