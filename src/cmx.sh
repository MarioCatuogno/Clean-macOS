#!/bin/bash

case "$1" in
    install|INSTALL)
        ~/Documents/Clean-macOS/src/cmx_install.sh
        ;;
    config|CONFIG)
        ~/Documents/Clean-macOS/src/cmx_config.sh
        ;;
    update|UPDATE)
        ~/Documents/Clean-macOS/src/cmx_update.sh
        ;;
    essentials|ESSENTIALS)
        ~/Documents/Clean-macOS/src/cmx_essentials.sh
        ;;
    *)
		echo "Usage: $0 [ config | essentials | install | update ]" ; exit 1
        ;;
esac



