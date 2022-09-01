#!/bin/bash
nom=$(whoami)
file=$1

bor="☐"
bow="☐"
box="☐"
if [ $(namei -l $file | tail -n 1 | cut -c 2) == "r" ]
then
    bor="☑"
fi
if [ $(namei -l $file | tail -n 1 | cut -c 3) == "w" ]
then
    bow="☑"
fi
if [ $(namei -l $file | tail -n 1 | cut -c 4) == "x" ]
then
    box="☑"
fi

sed -e "s/__nom__/${nom}/g" \
    -e "s#__adresse__#${HOME}#g" \
    -e "s#__fichier__#${file}#g" \
    -e "s/__bor__/${bor}/" \
    -e "s/__bow__/${bow}/" \
    -e "s/__box__/${box}/" attestation_template.txt
