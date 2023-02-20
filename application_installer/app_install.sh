#!/bin/bash


# Install apps and verify
echo "Installing Discord"
sleep 1
name_package='discord'
verify_install_packages
install_apt_package
new_verify_install_package $name_package



