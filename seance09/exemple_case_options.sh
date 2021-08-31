#!/bin/bash
usage() {
    echo "menu d'aide"
    echo "$0 [-e|--entier] ENTIER [-p|--prenom] PRENOM"
}

while [ $# -gt 0 ]
do
    opt=$1
    case $opt in 
        -h|--help)
            usage
            exit 0
            break;;
        -e|--entier) 
            entier=$2
            echo "l'entier ${entier} est entrée en argument avec l'option $opt"
            shift;;
        -p|--prenom) 
            prenom=$2
            echo "l'entier ${prenom} est entrée en argument avec l'option $opt"
            shift;;
    esac
    shift
done


exit 0;
