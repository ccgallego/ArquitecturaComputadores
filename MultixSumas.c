
/* 
 * Programa que realiza la multiplicacion de dos numero mediante sumas sucesivas
 * Author: Cristian Gallego
 * Codigo: 1112630610
 */

#include <stdio.h>
#include <stdlib.h>

int main() {
    //Se declaran 2 variables las cuales guardaran lo escrito por teclado
    int nro1,nro2;
    //Pedimos por teclado el primer numero
    printf("Introduzca el primer numero : ");
    //Guardamos lo digitado por teclado en la variable nro1
    scanf("%d", &nro1);
    //Pedimos por teclado el segundo numero
    printf("Introduzca el segundo numero : ");
    //Guardamos lo digitado por teclado en la variable nro2
    scanf("%d", &nro2);
    
    //Hacemos el llamado a la funcion y le pasamos las variables
    //que contiene lo digitado por teclado
    multiXsumas(nro1,nro2);
   
}

int multiXsumas(int nro1,int nro2){
    //Se declara la variable suma para guardar la suma sucesiva
    int suma = 0;
    //Inicializamos el ciclo for en 1 y que sea menor que el nro 2 
    for(int i=1; i<=nro2; i++){
        //Cada que ejecute el ciclo for se va sumando el nro 1 , la cantidad de nro2
        suma = suma+nro1;        
    }
    //retornamos el resultado que lo contiene la variable suma
    return printf("La multiplicacion es: %d",suma);
}

