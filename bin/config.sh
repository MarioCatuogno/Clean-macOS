#!/bin/bash

# DATE: 2019-12-31
# VERSION: 1.9.0

###############################################################################
# Set variables                                                               #
###############################################################################

RED='\033[0;41;30m'
STD='\033[0;0;39m'
SETUP=~/cleanMacOS/setup
CONFIG=~/cleanMacOS/config
BIN=~/cleanMacOS/bin

###############################################################################
# Menu                                                                        #
###############################################################################

while :
do
    clear
    cat<<EOF
    ###############################################################################
    # cleanMacOS                                                                  #
    # Version : 1.9.0                                                             #
    ###############################################################################

    Please enter your choice:

    (1) Install
    (2) Update
    (3) Exit

    -------------------------------------------------------------------------------
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
