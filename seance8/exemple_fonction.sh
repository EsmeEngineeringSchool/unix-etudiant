max() {                               
    if [ "$1" -ge "$2" ]              
    then                              
        return $1                     
    else                              
        return $2                     
    fi                                
}                                     
read -p "Donnez deux nombres >" n1 n2   
max ${n1} ${n2}                       
echo "Le max de ${n1} et ${n2} est $?" 
