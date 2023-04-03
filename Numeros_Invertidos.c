#include <stdio.h>

int main() {
    int n, num, digit, reversed_num, count_3 = 0, count_5 = 0;
    
    printf("Ingrese la cantidad de numeros: ");
    scanf("%d", &n);
    
    for (int i = 0; i < n; i++) {//Se Usa un for y se pregunta el numero que desea aplicarle los procedimientos, el for hara que pregunta hasta que se cumpla la condicion de parada
        printf("Ingrese un numero: ");
        scanf("%d", &num);
        int temp = num; // Se guarda el valor original del número ingresado
        
        // Validación a)
        if (num > 999) {//Se coloca así ya que el enunciado dice que esto se hara para aquellos mayores de 3 digitos, osea de 4 digitos en adelante
            reversed_num = 0;
            while (num != 0) {//Se seguira haciendo cuando el numero sea distinito de 0, esto la la intencion que la condicion de  parada sea cuando num sea 0
                digit = num % 10;// Con esto se saca el ultimo digito del numero, Ejemplo: 123, seria el 3
                reversed_num = reversed_num * 10 + digit;//Con esto lo que hacemos es como si movieras una casilla a la izquierda, en la primera iteracion si pongo 123 seri8a 0 * 10 + 3, eso es igual a 3, y en la siguiente iteracion seria 3 * 10 + 2 que seria 32, y así sucesivamente
                num = num / 10;//y despues se quita el ultimo numero para que baya al siguiente, ejemplo, si es 123, quitas el 3 porque se supone que ya en reversed_num lo tienes guardado y ahora lo quitas para que al repetirse el ciclo quede en 12 y saque el ultimo digito que seria ahora el 2
            }
            printf("El numero invertido es: %d\n", reversed_num);//Se muestra en pantalla reverse_num que es donde se guardo los numeros ya invertidos
        }
        
        
        // Validación b)
        while (temp != 0) { // Se utiliza la variable temp para mantener el valor original de num, ya que num fue modificado si el numero fue invertido, como temp tiene el valor original, se usa temp
            digit = temp % 10;//Se aplica el mismo procedimiento que antes, se saca el primer digito
            if (digit == 3) {//y se pregunta si es un 3 y pregunta si es 5, si alguno se cumple lo almacena y se incrementa la variable count_3 o count_5
                count_3++;
            }
            if (digit == 5) {
                count_5++;
            }
            temp = temp / 10; //Y quita ese ultimo digito utilizado para darle paso al siguiente y se repita el procedimiento
        }
    }
    
    printf("El numero 3 fue ingresado %d veces.\n", count_3); //Se muestran los resultados
    printf("El numero 5 fue ingresado %d veces.\n", count_5);
    
    return 0;
}


