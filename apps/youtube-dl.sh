#!/bin/bash
docker run --detach --restart unless-stopped \
--name youtube-dl \
--publish 8998:17442 \
--volume /home/pi/apps/youtube-dl/appdata:/app/appdata \
--volume /home/pi/apps/youtube-dl/downloads/subscriptions:/app/subscriptions \
--volume /home/pi/apps/youtube-dl/downloads/users:/app/users \
--volume /home/pi/apps/youtube-dl/downloads/audio:/app/audio \
--volume /home/pi/apps/youtube-dl/downloads/video:/app/video \
-e ALLOW_CONFIG_MUTATIONS=TRUE \
tzahi12345/youtubedl-material
