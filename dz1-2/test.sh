#!/usr/bin/bash

OS=$(cat /etc/*release | grep NAME | grep Ubuntu)
echo "OS "$OS