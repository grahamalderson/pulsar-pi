#!/bin/bash
docker run --detach --restart unless-stopped \
--name nginx \
--publish 80:80 \
--volume /home/pi/apps/pulsar-site:/usr/share/nginx/html \
--volume /mnt/files/offline:/usr/share/nginx/html/offline \
nginx
