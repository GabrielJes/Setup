#!/bin/bash

cd ~/Setup/application_installer/functions

source ./funcions_sn.sh
source ./function_loading.sh
source ./functions_apt.sh
source ./functions_snap.sh

# Install apps and verify
echo "Installing Discord"
sleep 1
name_package='discord'
endereco_arq='(locate -b "discord_erlpack/discord_erlpack.node"  | locate -b "discord.desktop")'
verify_snap
install_snap_package
verify_install_packages
install_apt_package
new_verify_install_package $name_package



