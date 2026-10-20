#!/bin/bash

user_id=$(id -u)

if [ $user_id -eq 0 ]; then
    echo "You are logged in as Normal user..."
else
    echo "Please run this script with sudo access..."    
fi


