#!/bin/bash
SERVICES="http https"
for i in $SERVICES ; do echo "Enabling $i"; firewall-cmd --add-service=$i --zone=public --perm ;done
firewall-cmd --reload
systemctl start mariadb.service httpd.service
sleep 5
systemctl status mariadb.service httpd.service
