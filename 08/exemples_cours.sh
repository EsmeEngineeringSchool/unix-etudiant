#!/bin/bash
# -------------------------------------------
#        Structures conditionnelles
# -------------------------------------------
# Sur chaine de caractère
# -------------------------------------------
var=$(date "+%A")
if [ "$var" = "lundi" ]
then 
    echo "Nous sommes lundi"
else
    echo "Nous ne sommes pas lundi"
fi
# -------------------------------------------
# Sur les nombres 
# -------------------------------------------
num=5
if [[ $num -eq 5 ]]
then
    echo "num est egal à 5"
else
    echo "num est différent de 5"
fi
# -------------------------------------------
# Sur les fichiers
# -------------------------------------------
file="test.txt"
if [ -e $file ]
then
    echo "le fichier $file existe"
else
    echo "le fichier $file n'existe pas"
fi
# -------------------------------------------
#         opérateurs booléens && || 
# -------------------------------------------
if [ -e $file ] && [ -w $file ]
then
    echo "le fichier $file existe et est modifiable"
fi 
if [ $num -ge 2 ] || [ $num -le 6 ]
then
    echo " 2 <= n <=6 "
fi 
# -------------------------------------------
#        Structures itératives  
# -------------------------------------------
# boucle for sur chaines
for var in "valeur1" "valeur2" "valeur2"                                        
do                                       
    echo "la variable vaut $var"                                                
done
# boucle for sur resultat d'une commande
for file in $(ls)                                                               
do                                                                              
    echo "fichier $file trouvé"                                                 
done  
# boucle for avec seq 
for i in $(seq 1 10)                                                            
do                                                                              
    echo ${i}                                                                   
done 
for i in $(seq 1 2 10)                                                          
do                                                                              
    echo ${i}                                                                   
done 
# boucle for synataxe du C
for ((i=1;i<=5;i++))                                                            
do                                                                              
    echo ${i}                                                                   
done

#while lire un fichier ligne par ligne
n=1                                                                             
while read line                                                                 
do                                                                              
    echo "$n : $line"                                                         
    n=$((n+1))                                                                  
done < fic1          
# while interaction utilisateur
while [ "$choix" != "q" ]                                                       
do                                                                              
    echo "Tapez q pour quitter la boucle"                                            
    read choix                                                                  
done 

# UNTIL
until false                                                                     
do                                                                              
    echo "je suis une boucle infinie (Ctrl+C == kill)"                                           
done   

