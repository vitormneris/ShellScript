#!/bin/bash

echo "Digite o nome do serviço: "
read serv

resp=`service $serv status | grep "Active:" | cut -d " " -f 7`

if [[ $resp == "inactive"  ]]; then
    echo "O serviço" $serv  "está inativo"
else 
    echo "O serviço" $serv "está ativo"
fi    


