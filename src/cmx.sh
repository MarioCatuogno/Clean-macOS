#!/bin/bash

case "$1" in
    install|INSTALL)
        ~/Dropbox/Github/Clean-macOS/src/cmx_install.sh
        ;;
    config|CONFIG)
        ~/Dropbox/Github/Clean-macOS/src/cmx_config.sh
        ;;
    update|UPDATE)
        ~/Dropbox/Github/Clean-macOS/src/cmx_update.sh
        ;;
    essential|ESSENTIAL)
        ~/Dropbox/Github/Clean-macOS/src/cmx_update.sh
        ;;
    *)
		echo "Usage: $0 [ config | essential | install | update ]" ; exit 1
        ;;
esac



