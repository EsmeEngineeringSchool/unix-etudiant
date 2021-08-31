#!/bin/bash
tab=("one two" three)
echo '"${tab[*]}"'
for element in "${tab[*]}"
do
    echo ${element}
done
echo
echo '"${tab[@]}"'
for element in "${tab[@]}"
do
    echo ${element}
done
echo
echo '${tab[*]}'
for element in ${tab[*]}
do
    echo ${element}
done
echo
echo '${tab[@]}'
for element in ${tab[@]}
do
    echo ${element}
done
