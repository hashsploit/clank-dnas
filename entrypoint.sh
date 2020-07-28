#!/bin/bash
/etc/init.d/bind9 start
set -e
rm -f /var/run/apache2/apache2.pid
exec apachectl -D FOREGROUND
