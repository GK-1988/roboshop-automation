#!/bin/bash

user_id=$(id -u)

if [ $user_id -ne 0 ]; then
    echo "ERROR: Please run this script with sudo access..."  
    exit 1
fi


