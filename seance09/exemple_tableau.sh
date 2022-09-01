#!/bin/bash

#declare -a capitales=("Paris" "Londres" "Bruxelles" "Madrid" "Lisbonne")
capitales=("Paris" "Londres" "Bruxelles" "Madrid" "Lisbonne")

echo "nombre d'éléments dans le tableau ${#capitales[@]}"

# parcourir un tableau par les éléments
for capitale in ${capitales[@]}
do
    echo ${capitale}
done

#parcourir un tableau par les indices
for i in $(seq 0 $((${#capitales[@]}-1)))
do
    echo ${i} ${capitales[${i}]} 
done

#version 2
for i in ${!capitales[@]} # la liste de tous les indices du tableau
do
    echo ${i} ${capitales[${i}]}
done










