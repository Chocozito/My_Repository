#include <stdio.h>

//1) Desarrolle un programa en C que permita determinar si dos números ingresados por 
//teclado son amigos
//Dos números se consideran amigos si la suma de sus divisores es igual al otro número, por 
//ejemplo.
//Los números 220 y 284

int main() {
    int num1, num2, sum1 = 0, sum2 = 0;
    printf("Ingrese el primer numero: ");
    scanf("%d", &num1); //Se pide que ingrese los numeros con lo que veremos si son amigos o no
    printf("Ingrese el segundo numero: ");
    scanf("%d", &num2);

    for (int i = 1; i <= num1 / 2; i++) { //Al saber el numero de interacciones que debemos hacer se usa un for, donde lo que sabemos es que debemos buscar los divisores de ambos numeros y sumarlos
        if (num1 % i == 0) { //forma de saber los divisores de un numero, donde num1 es el numero que buscaremos sus divisores, i es el indice donde lo iremos dividiendo varias veces hasta que se cumpla la condicion del for  i <= num / 2, recordemos que los divisores son aquellos que al dividir su residuo sea 0
            sum1 = sum1 + i; //Si se cumple la condicion entonces es porque es divisor y se suma el i (que este seria el divisor, lo que nos interesa) a sum1 donde estara guardado toda la suma de los divisores de num1
        }
    }

    for (int i = 1; i <= num2 / 2; i++) { //Se hace lo mismo para num2
        if (num2 % i == 0) {
            sum2 = sum2 + i;
        }
    }

    if (sum1 == num2 && sum2 == num1) { // ahora comparamos usando un condicional, si la suma de los divisores del primer numero es igual al segundo numero ingresado y los divisores del segundo numero es igual al primer numero ingresado, entonces son amigo
        printf("%d y %d son numeros amigos\n", num1, num2);
    } else {
        printf("%d y %d no son numeros amigos\n", num1, num2); //Sino, no lo son
    }

    return 0;
}
