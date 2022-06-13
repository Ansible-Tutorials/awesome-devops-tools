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
else
    echo Not found
fi