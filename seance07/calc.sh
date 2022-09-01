#!/bin/bash
echo $1 $2 $3 = $(($1$2$3))
let "res=$1$2$3"
echo "$1 $2 $3 = ${res}"
