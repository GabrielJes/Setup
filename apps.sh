#!bin/bash
source ./funcions_apps.sh
source ./loading.sh
source ./funcions.sh

# Inicio

# Installer e verify discord
echo 'Installing discord'
loading
sudo snap install discord
echo
verify_discord

# Installer e verify Steam
echo 'Installing Steam'
app='steam'
loading 
sudo apt install steam 
verify_steam

# Installer e verify Google-chrome 
echo 'Installing google-chrome'
app='google-chrome'
loading
verify_google_chrome

# Installer e verify vscode
echo 'Installing vscode'
app='code'
loading 
verify_code

# Installer e verify Spotify
echo 'Installing Spotify' 
app='spotify'
loading 
verify_spotify

# Installer e verify Pycharm
echo 'Installing Pycharm' 
app='pycharm'
loading 
verify_pycharm

# Installer e verify Jupyter
echo 'Installing Jupyter' 
app='jupyter'
loading 
verify_jupyter





