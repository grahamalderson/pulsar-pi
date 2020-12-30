#!/bin/bash
docker run --detach --restart unless-stopped \
--name nginx \
--publish 80:80 \
--volume /media/pi/usb-drive/apps/website:/usr/share/nginx/html \
nginx
