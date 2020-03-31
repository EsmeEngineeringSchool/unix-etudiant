#!/bin/bash
echo "$(date)"
echo "Le nom de ce script : $0"
echo "Nombre paramètres : $#"
echo "$*"
echo "$@"
echo "les deux premiers paramètres sont : $1,$2"

exit "$?"
