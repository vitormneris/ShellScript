#!/bin/bash

echo -n  "Digite o nome do serviço: "
read servico

while true; do
	stt=`service $servico status | grep "Active:" | cut -d " " -f 7`
	if [[ $stt == "active"  ]]; then 
		echo "O serviço" $servico  "está ativo"
	else 
		echo "O serviço" $servico  "está inativo"
	fi
	sleep 2
done
