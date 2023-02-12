
## loading 100

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
verify_package() {
    nome=app
    pacote=$(dpkg --get-selections | grep "$nome" ) 
    echo 
    echo -n "Instalação bem sucedida! ."
    sleep 2
  if [ -n "$pacote" ] ;

  then echo
     echo "Pacote instalado"
  else echo
     echo "Pacote falhou!"
     echo "Instalando com outro gerenciador de Pacotes ."
     sudo apt-get install $nome
  fi



















}
