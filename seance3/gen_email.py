import random

if __name__=="__main__":

    domains=['esme.fr','fe.up.pt','eng.cam.ac.uk']
    prenoms=[['pierre','paul','jacques','philippe','marie','lucie','julie'],\
             ['pedro','paulo','tiago','filipe','maria','lucia','julia'],\
             ['peter','paul','james','phil','mary','lucy','julia']]
    noms=[['dupont','martin','petit','bernard'],\
          ['silva','santos','pereira','vasconcelos'],
          ['smith','jones','brown','taylor']]
    sep='.'
    k=0
    while k< 1000 :
        r=random.randint(0,2)
        p=random.choice(prenoms[r])
        n=random.choice(noms[r])
        d=random.choice(domains)

        email=p+sep+n+'@'+d
        print(email)
        k+=1

