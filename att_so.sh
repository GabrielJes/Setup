#!/bin/bash 

barra_de_loading() {

    #Barra de progresso
    declare -r STEPS=('step1','step2','step3','step4')
    declare -r MAX_STEPS=${#STEPS[@]}

    # Tamanho maximo da barrinha quando completar o loading
    declare -r BAR_TAMANHO="################"

    # Calcula o tamano da string
    declare -r MAX_BAR_TAMANHO=${#BAR_TAMANHO}

    for step in "${!STEPS[@]}"; do
    perc=$(((step + 1) * 100 / MAX_STEPS))

    # Calcula o ultimo caracter da barrinha 
    percBAR=$((perc * MAX_BAR_TAMANHO / 100))
    
    #exibindo barrinha
    echo -n "[${BAR_TAMANHO:0:percBAR}] $perc %  " 
    echo "."

    done
}


# apresentacao do shell script #

echo '###############################################################'
sleep 1

echo "instalando dependencias" && sleep 2

barra_de_loading sudo apt install boxes

sleep 2

echo '################ [  Ola!! Seja bem-vindo ao AVOCAT ] ################'
echo "Seja bem-vindo ao Avocato ! " | boxes -d cat

sleep 2

echo 'No Avocato, Os pacotes de atualização são baseados no que eu quiser,
caso queira outros aplicativos faca um clone do projeto e mude para os aplicativos de sua preferência. '

sleep 2

echo 'Você gostaria de iniciar com os pacotes atuais?'

# Perguntando se ele realmente quer usar o app#
# loop s/n 

read -p "Deseja continuar? (Y/N): " confirm && [[ $confirm == [yY] || $confirm == [yY][eE][sS] ]] || exit 1

echo "carregando" && sleep 1

echo '##############################################' && sleep 1

echo '################ [ Versao do sistema operacional atual ] ################' && sleep 2

# versao do sistema operacional atual

cat /etc/os-release && sleep 1

## versao do kernel

echo '################ [ versao de kernel ] ################' && sleep 3
uname -r

sleep 1

# atualizacao dos pacotes
echo '################ [ Atualizando os pacotes do sistema ] ################' && sleep 2
barra_de_loading sudo apt update -y
sleep 1
    
# Deletando firefox

echo '################ [ Removendo firefox ] ################'

barra_de_loading sudo apt-get --purge remove Firefox -y

# identificar arquivo do firefox e deletar o navegador



# se nao existir esse arquivo naquele local printa que o firefox foi deletado

# se nao printa que falhou e tenta a segunda opcao

# se nao der novamente printa que sera ignorado


#rodando config 2

bash config.sh 

