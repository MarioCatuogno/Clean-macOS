#!/bin/bash

# DATE: 2019-10-31
# VERSION: 1.8.0

###############################################################################
# Launch script                                                               #
###############################################################################

# Entering as Root
printf "Enter root password...\n"
sudo -v

# Keep alive Root
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

#!/bin/bash
while IFS="" read -r p || [ -n "$p" ]
do
  printf '%s\n' "Installing $p..."
  printf '%s\n' "Ciao!"
done < /Users/mariocatuogno/Desktop/testo.txt
