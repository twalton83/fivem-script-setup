#!/bin/bash

if [ -z "$1" ]; then
    echo "Usage: $0 <directory-name>"
    exit 1
fi

SCRIPT_DIR="../$1"

echo "Creating FiveM Lua script directory in $SCRIPT_DIR..."

mkdir "$SCRIPT_DIR"
cd "$SCRIPT_DIR" || exit

mkdir client server shared ui data

touch fxmanifest.lua config.lua README.md
touch client/main.lua client/events.lua client/utils.lua
touch server/main.lua server/events.lua server/utils.lua
touch shared/framework.lua shared/locales.lua

echo "fx_version 'cerulean'" > fxmanifest.lua
echo "game 'gta5'" >> fxmanifest.lua
echo "author 'YourName'" >> fxmanifest.lua
echo "description 'FiveM Script'" >> fxmanifest.lua
echo "version '1.0.0'" >> fxmanifest.lua
echo "shared_script 'config.lua'" >> fxmanifest.lua
echo "client_scripts {'client/main.lua', 'client/events.lua', 'client/utils.lua'}" >> fxmanifest.lua
echo "server_scripts {'server/main.lua', 'server/events.lua', 'server/utils.lua'}" >> fxmanifest.lua
echo "shared_script 'shared/framework.lua'" >> fxmanifest.lua

echo "FiveM script structure created in $SCRIPT_DIR! Be sure to update the manifest."
