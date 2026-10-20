#!/bin/bash

USER_ID=$(id -u)
echo "USER_ID=$USER_ID"

if [ "$USER_ID" -ne 0 ]; then
    echo "ERROR: Please install the package with sudo user..."
    exit 1
fi

validation(){
    if [ $1 -ne 0 ]; then
        echo "{$2} is FAILED"
        exit 1
    else
        echo "{$2} is SUCCESS"
    fi
}

echo "Proceeding installation"
dnf install nginx -y
validation $? "Nginx Installtion"


dnf install mysql-server -y
validation $? "Mysql Installtion"
echo "Still proceeding..."

