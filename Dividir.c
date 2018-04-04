

/* 
 * File:   Dividir.c
 * Author: gallego
 *
 * Created on 15 de febrero de 2018, 11:34 PM
 */

#include <stdio.h>
#include <stdlib.h>


int main() {

    int dividendo,divisor;
    printf("Ingrese el dividendo(entero): ");
    scanf("%d",&dividendo);
    printf("Ingrese el divisor(entero): ");
    scanf("%d",&divisor);
    
    DivisionXrestas(dividendo,divisor);
    
    
}

int cociente,residuo;

int DivisionXrestas(int dividendo,int divisor){
    if(dividendo>0 && divisor>0){
        cociente =0;
        residuo=dividendo;
        while(residuo>=divisor){
            residuo-=divisor;
            cociente++;
        }
        return printf("%d dividido %d = %d ",dividendo,divisor,cociente);
    }else{
        return printf("Los numeros deben ser mayores a cero");
    }
}
