#!/bin/bash
docker build https://github.com/kiwix/kiwix-tools.git#:docker/server -t local/kiwix-serve --build-arg ARCH="arm32v7/"
docker run --detach --restart unless-stopped \
--name kiwix-serve \
--publish 8081:80 \
--volume /home/pi/apps/kiwix:/data \
local/kiwix-serve \
*.zim
