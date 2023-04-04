#!bin/bash

systemctl enable httpd

systemctl start httpd

systemctl enable tomcat9

systemctl start tomcat9