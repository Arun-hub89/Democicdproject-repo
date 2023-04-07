#!/bin/bash

# Check if Tomcat is running
if systemctl is-active --quiet tomcat9; then
    # Tomcat is running, stop it
    sudo systemctl stop tomcat9
    echo "Tomcat has been stopped."
else
    echo "Tomcat is not running."
fi


# Check if Httpd is running
if systemctl is-active --quiet httpd; then
    # Tomcat is running, stop it
    sudo systemctl stop httpd
    echo "httpd has been stopped."
else
    echo "httpd is not running."
fi
