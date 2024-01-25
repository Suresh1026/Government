#!/bin/bash

ID=$(id -u)

if [ $ID -ne 0 ]
then 
    echo "error: please run this script with root user"
    exit 1
else
    echo "you are root user"
fi

yum install mysqllll -y

if [ $? -ne 0 ]
then 
    echo "error: Installing MySql is failled"
    exit 1
else
    echo "MySql Installed successfully"
fi