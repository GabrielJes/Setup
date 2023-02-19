#!bin/bash
source ./funcions_apps.sh
source ./loading.sh
source ./funcions.sh

# Inicio

# Installer e verify discord
echo 'Installing discord'
loading
echo
sudo snap install discord
echo
verify_discord
sleep 1


# Installer e verify Steam
echo 'Installing Steam'
app='steam'
loading 
sudo apt install steam 
verify_steam
sleep 1

# Installer e verify Google-chrome 
echo 'Installing google-chrome'
app='google-chrome'
loading
google_installer
verify_google_chrome
sleep 1


# Installer e verify vscode
echo 'Installing vscode'
app='code'
loading 
verify_code
sleep 1


# Installer e verify Spotify
echo 'Installing Spotify' 
app='spotify'
loading 
verify_spotify
sleep 1


# Installer e verify Pycharm
echo 'Installing Pycharm' 
app='pycharm'
loading 
verify_pycharm
sleep 1


# Installer e verify Jupyter
echo 'Installing Jupyter' 
app='jupyter'
loading 
verify_jupyter
sleep 1






