#!/bin/bash
sudo chmod a+rx /media/pi
docker run --detach --restart unless-stopped \
--name samba \
--publish 139:139 \
--publish 445:445 \
--volume /media/pi:/share \
dperson/samba \
-s "share;/share;yes;no;yes;;;;"
