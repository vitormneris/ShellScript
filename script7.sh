#!/bin/bash

echo -n "Digite os 3 primeiros octetos do IP: "
read ip

for i in {1..254}; do
	res=`ping -c 1 $ip"."$i | grep "received" | cut -d "," -f 2 | tr -d " "`
	if [[ $res == "1received"  ]]; then
		echo "O IP" $ip"."$i "retornou resposta com sucesso."
	fi
done
