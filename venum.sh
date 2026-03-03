#!/bin/bash

COMMAND=$1
SUBCOMMAND=$2

case "$COMMAND" in
  digi)
    case "$SUBCOMMAND" in
      fetch)
        bash ./music/pools/digiwaxx/fetch.sh
        ;;
      download)
        bash ./music/pools/digiwaxx/download.sh
        ;;
      tag)
        bash ./music/pools/digiwaxx/tag.sh
        ;;
      route)
        bash ./music/pools/digiwaxx/route.sh
        ;;
      *)
        echo "Unknown DigiWaxx command: $SUBCOMMAND"
        exit 1
        ;;
    esac
    ;;
  *)
    echo "Unknown command: $COMMAND"
    exit 1
    ;;
esac
