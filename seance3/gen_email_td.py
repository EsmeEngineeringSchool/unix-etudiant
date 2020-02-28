import random
if __name__=="__main__":

    arb='@'
    nom_valides='ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_.'
    nom_nonvalides='!?#(){}[]'

    domaine_valides='ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-.'
    domaine_nonvalides='!?#(){}[]_'
    
    extension_valides='abcdefghijklmnopqrstuvwxyz'
    extension_nonvalides='ABCDEFGHIJKLMNOPQRSTUVWXYZ'

    pos_nonval=0
    nemail=0
    while nemail < 100:
        email=''

        # nom
        nom=''
        nbl_nom=random.randint(1,10)
        nom_valide=bool(random.getrandbits(1))
        if not nom_valide and nbl_nom!= 1 : pos_nonval=random.randint(1,nbl_nom-1)
        for c in range(nbl_nom):
            nom+=random.choice(nom_valides)
            if not nom_valide and c == pos_nonval :
                nom+=random.choice(nom_nonvalides)
    #    print("nom",nom,nbl_nom,pos_nonval)
        email+=nom+arb
        # domaine
        domaine=''
        nbl_domaine=random.randint(2,10)
        domaine_valide=bool(random.getrandbits(1))
        if not domaine_valide and nbl_domaine != 1 : pos_nonval=random.randint(1,nbl_domaine-1)
        for c in range(nbl_domaine):
            domaine+=random.choice(domaine_valides)
            if not domaine_valide and c == pos_nonval :
                domaine+=random.choice(domaine_nonvalides)
        email+=domaine+'.'
    #    print("domaine",domaine)

        # extension 
        extension=''
        extension_valide=True
        nbl_extension=random.randint(2,7)
        if nbl_extension >=5 : extension_valide=False
        for c in range(nbl_extension):
            extension+=random.choice(extension_valides)
            if not extension_valide  :
                    extension+=random.choice(extension_nonvalides)
        email+=extension
    #    print("extension",extension,nbl_extension)


        
        print(email,nom_valide,domaine_valide,extension_valide,nom_valide and domaine_valide and extension_valide)
    #    print(email,nom_valide and domaine_valide and extension_valide)
        nemail+=1
            



