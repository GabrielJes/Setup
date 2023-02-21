#!/bin/bash

cd ~/Setup/application_installer/functions
source ./functions_apt.sh


# Install apps and verify
packages=$(dpkg --get-selections | sudo find var/lib/snapd/ -name code_code.desktop)         
name_package=vscode
verify_install_apps_apt $name_package

# Install apps and verify
name_package=steam
verify_install_apps_snap $name_package

# Install apps and verify
name_package=discord
verify_install_apps_apt $name_package

# Install apps and verify
name_package=spotify
verify_install_apps_snap $name_package

# Install apps and verify
name_package=pycharm
verify_install_pycharm $name_package

# Install apps and verify
name_package=jupyter
verify_install_apps_apt $name_package

# Install apps and verify
name_package=google.chrome
verify_install_google $name_package

