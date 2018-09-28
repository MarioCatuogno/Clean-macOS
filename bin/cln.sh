#!/bin/bash

# NAME: Clean macOS script
# DESC: Setup a clean environment for your Mac operating system
# DATE: 26-09-2018
# VERSION: 1.5.0

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
    # Version : 1.5.0                                                             #
    ###############################################################################

    Please enter your choice:

    (1) BASIC setup
    (2) DEV setup
    (3) PRODUCTIVITY setup
    (4) EXTRA setup
    (5) Update system
    (0) Quit
    ------------------------------
EOF
    read -n1 -s
    case "$REPLY" in
    "1")  echo "You chose BASIC setup..."           | ~/Documents/Clean-macOS/bin/cln_basic.sh          ;;
    "2")  echo "You chose DEV setup..."             | ~/Documents/Clean-macOS/bin/cln_dev.sh            ;;
    "3")  echo "You chose PRODUCTIVITY setup..."    | ~/Documents/Clean-macOS/bin/cln_productivity.sh   ;;
    "4")  echo "You chose EXTRA setup..."           | ~/Documents/Clean-macOS/bin/cln_extra.sh          ;;
    "5")  echo "You chose to update syestem..."     | ~/Documents/Clean-macOS/bin/cln_update.sh         ;;
    "0")  exit                                  ;;
     * )  echo "Invalid option!"                ;;
    esac
    sleep 1
done
