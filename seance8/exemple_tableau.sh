#!/bin/bash
tab=("lundi" "mardi" "mercredi")
echo "initialisation"
echo "première valeur: ${tab[0]}"
echo "deuxième valeur: ${tab[1]}"
echo "troisième valeur: ${tab[2]}"

echo
echo "affichage de tous les éléments"
echo "${tab[*]}"

echo
echo "affichage du nombre d'éléments"
echo "${#tab[@]}"

tab[0]="vendredi"
echo
echo "modification"
#exercice afficher les valeurs avec une boucle for

