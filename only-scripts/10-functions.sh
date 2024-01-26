#!/bin/bash

id=$(id -u)
VALIDATE(){
    if [ $ID -ne 0]
    then 
        echo "error: install is failled"
        exit 1
    else
        echo "install is success"
    fi
}

if [ $ID -ne 0 ]
then 
    echo "error: please run this script with root access"
    exit 1
else
    echo "you are root user"
fi

yum install mysql -y

VALIDATE

yum install git -y