#include <stdio.h>

int main() {
    int horas, minutos, segundos, totalSegundos;

    printf("Introduce la hora en formato hh:mm:ss: ");
    scanf("%d:%d:%d", &horas, &minutos, &segundos);

    totalSegundos = horas * 3600 + minutos * 60 + segundos;

    printf("Han pasado %d segundos desde las 0:0:0 horas.\n", totalSegundos);

    return 0;
}
