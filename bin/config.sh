#!/bin/bash

# NAME: Clean macOS CONFIG script
# DESC: Setup a clean environment for your Mac operating system
# DATE: 2019-07-31
# VERSION: 1.6.3

###############################################################################
# Define Variables                                                            #
###############################################################################

RED='\033[0;41;30m'
STD='\033[0;0;39m'

###############################################################################
# Menu                                                                        #
###############################################################################

while :
do
    clear
    cat<<EOF
    ###############################################################################
    # CLN : Clean macOS                                                           #
    # Version : 1.6.0                                                             #
    ###############################################################################

    Please enter your choice:

    (1) Install
    (2) Update
    (3) Exit
    ------------------------------
EOF
    read -n1 -s
    case "$REPLY" in
    "1")  echo "Ready to install..."            | ~/Documents/Clean-macOS/bin/setup.sh          ;;
    "2")  echo "Ready to update..."             | ~/Documents/Clean-macOS/bin/update.sh            ;;
    "3")  exit                                  ;;
     * )  echo "Invalid option!"                ;;
    esac
    sleep 1
done
