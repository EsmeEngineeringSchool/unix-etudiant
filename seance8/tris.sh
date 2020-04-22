#!/bin/bash
echo "tri de $# éléments"
tri_insertion()
{
    tab=($*)
    n=${#tab[@]}
    for i in $(seq 1 $((n-1)))
    do
        cle=${tab[${i}]}
        j=$((i-1))
        while [ $j -ge 0 ] && [ ${tab[${j}]} -gt ${cle} ]
        do
            tab[$((j+1))]=${tab[${j}]}
            j=$((j-1))
        done
        tab[$((j+1))]=$cle
    done
    echo ${tab[*]}
}
tri_selection()
{
    tab=($*)
    n=${#tab[@]}
    for i in $(seq 0 $((n-1)))
    do
        for j in $(seq $((i+1)) $((n-1)))    
        do
            if [ ${tab[${i}]} -gt ${tab[${j}]} ]
            then
                tmp=${tab[${i}]}
                tab[${i}]=${tab[${j}]}
                tab[${j}]=${tmp}
            fi  
        done
    done
    echo ${tab[*]}
}
tri_bulles()
{
    tab=($*)
    n=${#tab[@]}
    for i in $(seq 0 $((n-1)))
    do
        for j in $(seq $((n-1)) -1 $((i+1)))
        do
            if [ ${tab[${j}]} -lt ${tab[$((j-1))]} ]
            then
                tmp=${tab[$((j-1))]}
                tab[$((j-1))]=${tab[${j}]}
                tab[${j}]=${tmp}
            fi
        done
    done
    echo ${tab[*]}
}
tri_insertion $*
tri_selection $*
tri_bulles $*
exit $?
