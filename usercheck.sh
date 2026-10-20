#!/bin/bash

user_id=$(id -u)

if [ $user_id -eq 0 ]; then
    echo "Please run this script with sudo access..."
else
    echo "You are logged in as Normal user..."
fi


