#!/bin/bash
case ${1} in
??/??/????)
    echo "j'ai deviné, c'est une date" ;;
[A-Z])
    echo "j'ai deviné, c'est une majuscule" ;;
[a-z])
    echo "j'ai deviné, c'est une minuscule" ;;
[0-9])
    echo "j'ai deviné, c'est un chiffre" ;;
esac                                                

