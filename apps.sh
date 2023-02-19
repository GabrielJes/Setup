#!bin/bash
source ./funcions_apps.sh

# Inicio
sleep 1

# Installer e verify discord
echo 'Verificando discord'
app='discord'
sleep 1
barra_de_loading
verify_discord

# Installer e verify Steam
echo 'Verificando Steam'
app='steam'
sleep 1
barra_de_loading
verify_apps

# Installer e verify Google-chrome 
echo 'Verificando google-chrome'
app='google-chrome'
sleep 1
barra_de_loading 
verify_google_chorme
sleep 1

# Installer e verify vscode
echo 'Verificando vscode'
app='code'
sleep 1
barra_de_loading 
verify_apps
sleep 1

# Installer e verify Spotify
echo 'Verificando Spotify' 
app='spotify'
sleep 1
barra_de_loading 
verify_spotify
sleep 1

# Installer e verify Pycharm
echo 'Verificando Pycharm' 
app='pycharm'
sleep 1
barra_de_loading 
verify_pycharm
sleep 1

# Installer e verify Jupyter
echo 'Verificando Jupyter' 
app='jupyter'
sleep 1
barra_de_loading
verify_jupyter





