#!/bin/bash

user_id=$(id -u)

if [ $user_id -ne 0 ]; then
    echo "ERROR: Please run the script with sudo user..."
    exit 1
fi

dnf install nginx -y

if [ $? -eq 0 ]; then
    echo "Nginx installtion is SUCCESS"
else
    echo "nginx installtion is FAILED"
fi

dnf install mysql-server -y

if [ $? -eq 0 ]; then
    echo "Mysql-server installtion is SUCCESS"
else
    echo "Mysql-server installtion is FAILED"
fi
