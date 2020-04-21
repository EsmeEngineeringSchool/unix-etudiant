opts=$1
case $opts in 
-h)
    echo "menu d'aide"
    echo "exemple_case.sh -e ENTIER";;
-e) 
    echo "l'entier $2 est entrée en argument";;
esac
