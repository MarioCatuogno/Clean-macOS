#!/bin/bash

set -e

###############################################################################
# Set variables                                                               #
###############################################################################

BIN="${HOME}/Clean-macOS/bin"                # shell scripts
CONFIG="${HOME}/Clean-macOS/config"          # configuration files directory
SETUP="${HOME}/Clean-macOS"                  # root folder of Clean-macOS

###############################################################################
# Menu                                                                        #
###############################################################################

install() {
  echo "Ready to install Homebrew..."
  "${BIN}/install.sh"
}

configure() {
  echo "Ready to configure macOS..."
  "${BIN}/config.sh"
}

update() {
  echo "Ready to update Homebrew..."
  "${BIN}/update.sh"
}

while true; do
  clear
  cat <<EOF
  ########################################################################
  # Clean-macOS                                                          #
  # Version : 1.14                                                       #
  ########################################################################
  #                                                                      #
  #  Please enter your choice:                                           #
  #                                                                      #
  #  (1) Install                                                         #
  #  (2) Configure                                                       #
  #  (3) Update                                                          #
  #  (0) Exit                                                            #
  #                                                                      #
  ########################################################################
EOF
  read -n1 -s
  case "$REPLY" in
    1) install ;;
    2) configure ;;
    3) update ;;
    0) exit ;;
    *) echo "Invalid option!" ;;
  esac
  sleep 1
done
