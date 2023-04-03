
#include <stdio.h>

int es_primo(int num);

int main() {
    int n, num, pares = 0, impares = 0, ceros = 0, primos = 0;

    printf("Ingrese la cantidad de numeros a ingresar: ");
    scanf("%d", &n);

    for (int i = 0; i < n; i++) { //Ciclo donde se ira resolviendo todos los numeros que ingrese el usuario
        printf("Ingrese un numero entero: "); // Primeramente se pide un numero y esto se va a repetir N cantidad veces de acuerdo a la cantidad de numeros que ingresó en el primer Scanf, Por ejemplo si al inicio ingresó 4, en este paso se le pedirá que ingrese 4 numeros
        scanf("%d", &num); 

        int temp = num; // Guardamos el numero en una variable temporal para contar los ceros

        while (temp != 0) { // contamos los ceros en el numero, La condicion es Mientras la variable temporal sea distinito de 0 (Esto quiere decir que nuestra condicin de parada es cuando el valor d ela variable sea 0)
            if (temp % 10 == 0) { // Con el mod lo que hacemos es sacar el ultimo digito, con el if estamos diciendo que si ese digito es 0 se almacena en la variable ceros (se  incrementa en 1)
                ceros++;
            }
            temp = temp / 10; // Despues se divide entre 10  para quitarle el ultimo digito, y así se ira repitiendo el proceso hasta que el numero introducido quede en 0 y por ende se active la condicion de parada, terminando así este ciclo
        }

        if (num % 2 == 0) { //Para sacar los pares e impares
            pares++;
        } else {
            impares++;
        }

        if (es_primo(num)) { //Aqui hacemos un llamado a la funcion, donde decimos que si la funcion se cumple para num entonces es primo y por ende se acumula en la variable primos
            primos++;
        }
    }

    printf("Cantidad de numeros pares: %d\n", pares);
    printf("Cantidad de numeros impares: %d\n", impares);
    printf("Cantidad de ceros: %d\n", ceros);
    printf("Cantidad de numeros primos: %d\n", primos);

    return 0;
}

int es_primo(int num) { // Esta es la funcion, la llamamos es_primos, aqui lo importante a resaltar es que si se cumple (osea es primo) se va a retornar 1, si no retornará 0
    if (num < 2) { //Una primera condicional porque sabemos que los primos pueden ser apartir de 2 en adelante, así que si esta condicional se cumple, entonces no es primo y retornará 0
        return 0;
    }

    for (int i = 2; i <= num / 2; i++) { 
        if (num % i == 0) {
            return 0;
        }
    }

    return 1;
}
