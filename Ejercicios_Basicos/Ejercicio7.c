#include <stdio.h>

int main()
{
    int num;

    printf("Introduzca un numero: ");
    scanf("%d", &num);
    if((num % 2) == 0) {
    printf("ES PAR");
    } else {
    printf("NO ES PAR");
    }
    return 0;
}