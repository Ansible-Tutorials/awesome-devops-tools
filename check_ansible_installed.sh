#!/bin/bash
# ------------------------------------------------------------------------ #
# Script Name:   firewalld.sh 
# Description:   Firewalld service management
# Site:          https://medium.com/@amaurybsouza
# Written by:    Amaury Souza
# Maintenance:   Amaury Souza
# ------------------------------------------------------------------------ #
# Usage:         
#       $ ./firewalld.sh
# ------------------------------------------------------------------------ #
# Tested on:  
#       Bash 4.2.46
# ------------------------------------------------------------------------ # 
# History:        v1.0 25/05/2020, Amaury:
#                - Start de program
#                - Add case feature
#                v1.1 25/05/2020, Amaury:
#                - Adding new variables
#                v1.2 25/05/2020, Amaury:
#                - Executing new tests in my system
# ------------------------------------------------------------------------ #
# Thankfulness:
#
# ------------------------------------------------------------------------ #

#VARIABLES --------------------------------------------------------------- #
#REQUIRED_PKG="ansible"
#CHECK_PKG=`dpkg -s ansible`

#CODE -------------------------------------------------------------------- #
#echo -ne "Checking if the $REQUIRED_PKG is present on the systems"
if ansible --version >/dev/null 2>&1; then
    echo Found
    sleep 3
    echo "Checking the version..."
    sleep 3
     ansible --version | grep -i "ansible 2."
    else
    echo Not found
    sleep 3
    echo "Installing the Ansible package..."
    sleep 3
    echo "Updating the system..."
    sudo apt update && sudo apt upgrade -y
    sudo apt install software-properties-common -y && sudo add-apt-repository --yes --update ppa:ansible/ansible && sudo apt install ansible -y
fi