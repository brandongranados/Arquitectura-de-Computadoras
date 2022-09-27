#include <stdio.h>
#include <stdlib.h>
int *num;
int llenaArreglo(int);
int mostrarArreglo(int);
int ordenarBurbuja(int);
int main ()
{
    int cantElementos;
    puts ("CUANTOS ELEMENTOS DESEAS ORDENAR");
    scanf("%d",&cantElementos);
    num = (int *) malloc (sizeof(int) * cantElementos);
    if(num == NULL)
    {
        puts("FALLA APLICACION");
        exit(1);
    }
    llenaArreglo(cantElementos);
    mostrarArreglo(cantElementos);
    ordenarBurbuja(cantElementos);
    printf("\n \n");
    mostrarArreglo(cantElementos);
    return 0;
}
int llenaArreglo(int elementos)
{
    int i;
    if(num == NULL)
    {
        puts("FALLA APLICACION");
        exit(1);
    }
    for(i=0; i<elementos; i++)
        num[i]= rand();
    return 0;
}
int ordenarBurbuja(int maxElem)
{
    int leeArregloIzq,leeArregloDer, aux;
    if(num == NULL)
    {
        puts("FALLA APLICACION");
        exit(1);
    }
    for(leeArregloIzq=0; leeArregloIzq<maxElem; leeArregloIzq++)
        for(leeArregloDer=maxElem-1; leeArregloDer>0; leeArregloDer--)
            if(num[leeArregloDer]<num[leeArregloDer-1])
            {
                aux = num[leeArregloDer];
                num[leeArregloDer] = num[leeArregloDer-1];
                num[leeArregloDer-1]=aux;
            }
    return 0;
}
int mostrarArreglo(int cantElem)
{
    int j;
    if(num == NULL)
    {
        puts("FALLA APLICACION");
        exit(1);
    }
    for(j=0; j<cantElem; j++)
        printf("%d EL NUMERO ES : %d \n", j+1, num[j]);
    return 0;
}