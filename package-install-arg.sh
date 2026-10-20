#!/bin/bash

user_id=$(id -u)
PACKAGE=$1

if [ $user_id -ne 0 ]; then
    echo "ERROR: Please run the script with sudo user..."
    exit 1
fi

dnf install $PACKAGE -y

if [ $? -eq 0 ]; then
    echo "Nginx installtion is SUCCESS"
else
    echo "nginx installtion is FAILED"
fi