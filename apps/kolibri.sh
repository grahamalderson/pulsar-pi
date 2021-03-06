#!/bin/bash
docker build https://github.com/grahamalderson/kolibri.git#master:docker -t local/kolibri -f arm-Dockerfile
docker run --detach --restart unless-stopped \
--name kolibri \
--publish 8080:8080 \
--volume /media/pi/usb-drive/apps/kolibri:/root/.kolibri \
local/kolibri
