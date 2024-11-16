#!/bin/bash

echo "Digite um numero: "
read numb1
echo "Digite outro numero: "
read numb2

if (($numb1 > $numb2 )); then
    echo "Maior: " $numb1
elif (($numb1 < $numb2)); then
    echo "Maior: " $numb2
else
    echo "Equals"
fi
