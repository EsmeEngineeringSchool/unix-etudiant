#!/bin/bash
case $1 in
"lundi")
    echo "$1 c'est comme un $1 !";;
"mardi")
    echo "$1 c'est permis !";;
"mercredi")
    echo "$1 c'est ravioli !";;
"jeudi")
    echo "$1 c'est juste jeudi !";;
"vendredi")
    echo "$1 c'est bientot fini!";;
"samedi")
    echo "$1 on est déjà samedi !";;
"dimanche")
    echo "$1 ... rien!";;
"*")
    echo "hein ?";;
esac
    
