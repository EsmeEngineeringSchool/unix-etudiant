#!/bin/bash

for i in "0" "1" 
do
    echo "----------------------------------------"
    echo "code :"
    echo "----------------------------------------"
    cat > returnC${i}.c << EOF
#include <stdio.h>
int main(){
    return ${i};
}
EOF
    cat returnC${i}.c
    echo "----------------------------------------"
    echo 
    gcc returnC${i}.c
    echo "gcc returnC${i}.c (compilation)" 
    echo "./a.out        (exécution)  "
    ./a.out
    echo "return \$? = $?  (\$? de l'exécution)"  
    echo 
done
rm *.c a.out
exit 0
