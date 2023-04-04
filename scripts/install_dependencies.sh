#!bin/bash

sudo su

yum update -y

yum install java-1.8* -y

yum install httpd -y

yum install tomcat9 -y

sudo cat << EOF > /etc/httpd/conf.d/tomcat_manager.conf
<VirtualHost *:80>
    ServerAdmin root@localhost
    ServerName app.democicd.com
    DefaultType text/html
    ProxyRequests off
    ProxyPreserveHost On
    ProxyPass / http://localhost:8080/democicdproject/
    ProxyPassReverse / http://localhost:8080/democicdproject/
</VirtualHost>
EOF

