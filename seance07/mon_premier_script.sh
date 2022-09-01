#!/bin/bash
# Ceci est mon premier script bash ! 14/10/20 Lille
echo "Hello World!"

# ceci est ma première variable :
var=3
echo $var ${var}

#Résultat d'une commande :
var=`ls`
var=$(ls)
echo ${var}
echo ${a}

#Notre premier read :
echo "Veuillez taper votre prenom"
read -p ">>>" prenom
echo "Vous êtes : ${prenom}"

#Quelques opérations mathématiques
a=3
b=2
c=$((a+b))
echo "Avec \$(()) ${a} + ${b} = ${c}" #evaluation d'une expression

let "a=6"
let "b=2"
let "c=a*b"
let "c=${a}*${b}"
echo "Avec let ${a} * ${b} = ${c}"


