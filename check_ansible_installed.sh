#!/usr/bin/env bash
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
PKG=`dpkg -s ansible`
#CODE -------------------------------------------------------------------- #
read -p "Package Name: "
which $pkg > /dev/null 2>&1
if  [ $? == 0 ]
    then
    echo "$pkg is already installed. "
    else
    read -p "$pkg is not installed. Answer yes/no if want installation_ " request
    