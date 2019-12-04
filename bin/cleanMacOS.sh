#!/bin/bash

# DATE: 2019-12-31
# VERSION: 1.9.0

###############################################################################
# Set variables                                                               #
###############################################################################

RED='\033[0;41;30m'
STD='\033[0;0;39m'
SETUP=~/cleanMacOS/setup            # shell script directory
CONFIG=~/cleanMacOS/config          # configuration files directory
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
    #                                                                             #
    #  Please enter your choice:                                                  #
    #                                                                             #
    #  (1) Install Homebrew                                                       #
    #  (2) Configure macOS                                                        #
    #  (3) Update                                                                 #
    #  (0) Exit                                                                   #
    #                                                                             #
    ###############################################################################
EOF
    read -n1 -s
    case "$REPLY" in
    "1")  echo "Ready to install Homebrew..."            | $BIN/setup.sh             ;;
    "2")  echo "Ready to configure macOS..."             | $BIN/config.sh            ;;
    "3")  echo "Ready to update..."                      | $BIN/update.sh            ;;
    "0")  exit                                                                       ;;
     * )  echo "Invalid option!"                                                     ;;
    esac
    sleep 1
done
