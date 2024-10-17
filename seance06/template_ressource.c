#include<stdio.h>

#define N __N__ 

int x[N]={0};

int main()
{
    while (1)
    {
        for (int k=0;k<N;k++)
        {
            x[k]++;     
            x[k]=x[k]*3;
        }
    }
    return 0;
}
