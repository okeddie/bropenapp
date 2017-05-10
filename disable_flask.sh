#!/bin/bash
SERVICES="http https"
for i in $SERVICES ; do echo "Disabling $i"; firewall-cmd --remove-service=$i --zone=public --perm ;done
firewall-cmd --reload
systemctl stop mariadb.service httpd
systemctl status mariadb.service httpd
