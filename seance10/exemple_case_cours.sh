#!/bin/bash
case $1 in
"lundi"|"Mon")
    echo "$1 c'est comme un $1 !";;
"mardi"|"Tue")
    echo "$1 c'est permis !";;
"mercredi"|"Wed")
    echo "$1 c'est ravioli !";;
"jeudi"|"Thu")
    echo "$1 c'est juste jeudi !";;
"vendredi"|"Fri")
    echo "$1 c'est bientot fini!";;
"samedi"|"Sat")
    echo "$1 on est déjà samedi !";;
"dimanche"|"Sun")
   echo "$1 ... rien!";;
*)
    echo "hein ?";;
esac
