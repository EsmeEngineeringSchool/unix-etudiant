#!/bin/bash
if [[ $1 =~ ^(V?(I{0,3})?|I[XV])$ ]] && ! [[ $1 =~ ^$ ]]
then
    echo "$1 est un chiffre romain"
else
    echo "$1 n'est pas un chiffre romain"
fi



