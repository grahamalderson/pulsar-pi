#!/bin/bash
docker run --detach --restart unless-stopped \
--name samba \
--publish 139:139 \
--publish 445:445 \
--volume /mnt/files/share:/shares/public \
--volume /mnt/files:/shares/readonly \
--volume /home/pi/apps/calibre-web/books:/shares/library \
-e USERID=1000 \
-e GROUPID=1000 \
dperson/samba \
-s "public;/shares/public;yes;no;yes;;;;" \
-s "readonly;/shares/readonly;yes;yes;yes;;;;" \
-s "library;/shares/library;yes;no;yes;;;;"
