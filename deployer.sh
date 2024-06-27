#!/usr/bin/bash

ap1=$1

if cat /etc/*release | grep ^NAME | grep Ubuntu; 
then
    if [[ $ap1 == nginx ]]; 
    then
        echo "==============================================="
        echo "Installing $ap1 on Ubuntu"
        echo "==============================================="
        sudo apt-get install nginx
    elif [ -z $ap1 ]; 
    then
        echo "Nothing has been defined to be installed. Please try again."
    elif [[ $ap1 == firefox ]]; 
    then 
        echo "==============================================="
        echo "Installing $ap1 on Ubuntu"
        echo "==============================================="
        sudo apt-get install firefox
    else
        echo "Cannot find "$ap1" app. Try again." 
    fi
elif cat /etc/*release | grep ^NAME | grep CentOS; 
then
    if [[ $ap1 == nginx ]]; 
    then
        echo "==============================================="
        echo "Installing $ap1 on CentOS"
        echo "==============================================="
        sudo yum install nginx
    elif [ -z $ap1 ]; 
    then
        echo "Nothing has been defined to be installed. Please try again."
    elif [[ $ap1 == firefox ]]; 
    then 
        echo "==============================================="
        echo "Installing $ap1 on CentOS"
        echo "==============================================="
        sudo yum install firefox
    else
        echo "Cannot find "$ap1" app. Try again." 
    fi
fi
