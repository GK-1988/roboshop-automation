#!/bin/bash

USER_ID=$(id -u)

if [ $USER_ID -ne 0 ]; then
    echo "ERROR: Please install the package with sudo user..."
    exit 1
fi

PACKAGES=("git" "nginx" "nodejs" "mysql-server")

for package in "${PACKAGES[@]}"
do
    dnf install $package -y

    if [ $? -eq 0 ]; then
        echo "$package installed successfully"
    else
        echo "$pacakge installation failed"
    fi
done