#!/bin/bash
sudo chmod a+rx /media/pi
docker run --detach --restart unless-stopped \
--name samba \
--publish 139:139 \
--publish 445:445 \
--volume /mnt/files/share:/shares/public \
--volume /mnt/files:/shares/readonly \
--volume /mnt/files/media/books:/shares/library \
dperson/samba \
-s "public;/shares/public;yes;no;yes;;;;" \
-s "readonly;/shares/readonly;yes;yes;yes;;;;" \
-s "library;/shares/library;yes;no;yes;;;;"
