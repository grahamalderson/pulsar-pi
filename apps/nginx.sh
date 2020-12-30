#!/bin/bash
docker run --detach --restart unless-stopped \
--name nginx \
--publish 80:80 \
--volume /media/pi/fast/apps/pulsar-site:/usr/share/nginx/html \
--volume /media/pi/files/offline:/usr/share/nginx/html/offline \
nginx
