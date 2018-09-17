#!/bin/bash

case "$1" in  
    install|INSTALL)
        ~/Dropbox/Github/Clean-macOS/bin/cmx_install.sh
        ;;
    config|CONFIG)
        ~/Dropbox/Github/Clean-macOS/bin/cmx_config.sh
        ;;   
    update|UPDATE)
        ~/Dropbox/Github/Clean-macOS/bin/cmx_update.sh
        ;;
    *)
		echo "Usage: $0 [ install | config | update ]" ; exit 1
        ;;
esac



