#!/bin/bash

case "$1" in  
    install|INSTALL)
        ~/Dropbox/Github/Clean-macOS/script/clnmacos_install.sh
        ;;
    config|CONFIG)
        ~/Dropbox/Github/Clean-macOS/script/clnmacos_config.sh
        ;;   
    update|UPDATE)
        ~/Dropbox/Github/Clean-macOS/script/clnmacos_update.sh
        ;;
    *)
		echo "Usage: $0 [ install | config | update ]" ; exit 1
        ;;
esac



