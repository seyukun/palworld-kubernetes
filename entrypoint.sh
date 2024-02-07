#!/bin/bash

STEAMCMD="/home/steam/steamcmd/steamcmd.sh"

OK="[ OK ]"
FAIL="[ FAIL ]"

install() {
    $STEAMCMD +login anonymous +app_update 2394010 validate +quit || bash -c 'echo "$FAIL Failed to install PalWorld" && exit 1';
    echo "$OK Installed PalWorld";
}

update() {
    if [ "$AUTO_UPDATE" = "true" ]; then
        $STEAMCMD +login anonymous +app_update 2394010 validate +quit || bash -c 'echo "$FAIL Failed to update PalWorld" && exit 1';
        echo "$OK Updated PalWorld";
    fi
}

main() {
    echo "$OK Container Started"
    if [ ! -f "/home/steam/Steam/steamapps/common/PalServer/PalServer.sh" ]; then
        install
    else
        update
    fi
    ./PalServer.sh
}

main