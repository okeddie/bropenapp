How to install:
using centos 7, get packaging situated:
install packaging
- yum --enablerepo=extras install -y epel-release
- yum install -y python-virtualenv python-pip httpd mariadb-server firewalld mod_wsgi git mysql-devl gcc

copy files into place
- cp -a bropenapp/srv/bropenstack.com /srv/

create virtual env
- virtualenv /srv/bropenstack.com

From the repo directory bropenapp:
/root/bropenapp
- cp -a requirements.txt /srv/bropenstack.com/
- cd /srv/bropenstack.com/
- source bin/activate
- pip install -r requirements.txt
- deactivate

Copy apache config:
- cp -a etc/httpd/conf.d/bropenstack.conf /etc/httpd/conf.d/

disable selinux:
- setenforce 0

Ensure apache config'd user matches in case of error:
Oct 07 08:59:24 domainblahblah polkitd[504]: Unregistered Authentication Agent for unix-process:1241:5152
[root@pyxis-api01 ~]# httpd -S
AH00543: httpd: bad user name bro

- useradd -s /sbin/nologin bro

Also, if you get index issues, ensure that your apache config has the virtualhost name the same as domain. 
- for staging.domain.com you'd have
- VirtualHost staging.domain.com:80

If mysql is installed, can simply use the start app script:
- [root@pyxis-api01 bropenapp]# ./enable_flask.sh


