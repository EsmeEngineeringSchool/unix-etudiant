#!/bin/bash

declare -A capitales=( [fr]="Paris" [be]="Bruxelles" [uk]="Londres")

for cle in ${!capitales[@]}
do
    echo $cle ${capitales[$cle]}
done

