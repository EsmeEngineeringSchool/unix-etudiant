import random
if __name__=="__main__":

    l=['I','V','X','']
    n=0
    while n<100 :
        rom=''
        for nl in range(4):
            r=random.choice(l)
            if nl == 0 and r == '': break
            while r != '' :
                rom+=r
                r=''
        if nl != 0 : 
            print(rom) # on affiche que si la ligne est non vide
            n+=1
