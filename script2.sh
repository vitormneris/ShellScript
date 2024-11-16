#!/bin/bash

echo "Deseja atualizar o sistema? (s/N)"
read resp

if [[ $resp == "s"  ]]; then
    echo "Atualizando o sistema..."	
    sudo apt-get update -y > log.txt
    sudo apt-get upgrade -y >> log.txt
    sudo apt-get autoremove -y >> log.txt
    echo "Sistema atualizado."
else 
    echo "Sistema não atualizado."
fi
