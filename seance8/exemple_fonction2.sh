c=0                          
function carre               
{                            
    a=$1                     
    c=$(($a*$a))             
    return                   
}                            
carre 9                      
echo "Le carré de 9 est ${c}"
