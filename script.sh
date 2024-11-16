#!/bin/bash

echo -n "Digite a URL do site: "
read url
echo "Localizando IP... " 
echo "Verificando disponibilidade..."
ping -c 1 $url > log.txt
ip=`cat log.txt | grep "PING" | cut -d "(" -f 2 | cut -d ")" -f 1`
echo "IP: " $ip
host=`cat log.txt | grep "received" | cut -d "," -f 2 | tr -d " "`
if [[ $host == "1received"   ]]; then 
	echo "Este site está disponível"
else 
	echo "Este site NÃO está disponível"
fi

