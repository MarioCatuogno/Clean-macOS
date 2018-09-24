#!/bin/bash

case "$1" in
    basic|BASIC)
        ~/Documents/Clean-macOS/src/cmx_basic.sh
        ;;
    full|FULL)
        ~/Documents/Clean-macOS/src/cmx_full.sh
        ;;
    config|CONFIG)
        ~/Documents/Clean-macOS/src/cmx_config.sh
        ;;
    update|UPDATE)
        ~/Documents/Clean-macOS/src/cmx_update.sh
        ;;
    *)
		echo "Usage: $0 [ basic | full | config | update ]" ; exit 1
        ;;
esac



