#!/bin/bash
if [[ $1 =~ ^(V?(I{0,3})?|I[XV])$ ]]
then
    echo "$1 is roman"
else
    echo "$1 is not roman"
fi
