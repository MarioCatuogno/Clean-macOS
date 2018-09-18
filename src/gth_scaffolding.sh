#!/bin/bash

###############################################################################
# Create scaffolding for a new Github project                                 #
###############################################################################

# You need to pass the name of Github repository as parameter
# and it will automatically create the folder structure and
# download the most recent version of ./gitignore file

if [ $# -eq 0 ]
  then
    echo "No arguments supplied"
    exit 1
  else
  printf "Creating scaffolding for Github project named: ${1}\n"
  mkdir ~/Dropbox/Github/${1}
  mkdir ~/Dropbox/Github/${1}/config
  mkdir ~/Dropbox/Github/${1}/data
  mkdir ~/Dropbox/Github/${1}/doc
  mkdir ~/Dropbox/Github/${1}/img
  mkdir ~/Dropbox/Github/${1}/src
  printf "Downloading common resources for ${1}\n"
  curl https://raw.githubusercontent.com/MarioCatuogno/Clean-macOS/master/config/gitignore.settings -o ~/Dropbox/Github/${1}/.gitignore
  touch ~/Dropbox/Github/${1}/README.md
fi
exit
