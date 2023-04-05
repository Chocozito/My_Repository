#include <stdio.h>

int main() {
    char ganador, perdedor, decision;
    int puntosGanador = 0, puntosPerdedor = 0, roundsGanadosGanador = 0, roundsGanadosPerdedor = 0;
    int bolsaInicial = 100000, multiplicador = 0;
    float porcentaje = 0.0, gananciasGanador = 0.0, gananciasPerdedor = 0.0;

    for (int i = 1; i <= 12; i++) {
        printf("Round %d:\n", i);
        printf("Ingrese la puntuacion de Floyd : ");
        scanf("%d", &puntosGanador);
        printf("Ingrese la puntuacion de Canelo: ");
        scanf("%d", &puntosPerdedor);
        if (puntosGanador == 10 && puntosPerdedor == 9) {
            roundsGanadosGanador++;
        } else if (puntosGanador == 9 && puntosPerdedor == 10) {
            roundsGanadosPerdedor++;
        } else if (puntosGanador < 9 || puntosPerdedor < 9) {
            printf("Puntuacion invalida, ingrese de nuevo\n"); 
            i--;
            continue;
        } else if (puntosGanador == puntosPerdedor) {
            puntosGanador -= 2;
            roundsGanadosGanador++;
            printf("El perdedor ha tocado la lona\n");
        }

        if (i == 12) {
            if (roundsGanadosGanador == roundsGanadosPerdedor) {
                decision = 'M';
            } else if (roundsGanadosGanador > roundsGanadosPerdedor) {
                decision = 'U';
            } else {
                decision = 'D';
            }
        }
    }

    printf("Rounds ganados por Floyd: %d\n", roundsGanadosGanador);
    printf("Rounds ganados por Canelo: %d\n", roundsGanadosPerdedor);

    if (decision == 'U') {
        printf("El ganador ha obtenido una decision unanime\n");
        multiplicador = 10;
    } else if (decision == 'D') {
        printf("El ganador ha obtenido una decision dividida\n");
        multiplicador = 5;
    } else {
        printf("El ganador ha obtenido una decision por mayoria\n");
        multiplicador = 15;
    }

    porcentaje = multiplicador * (roundsGanadosGanador - roundsGanadosPerdedor);

    gananciasGanador = bolsaInicial + (bolsaInicial * porcentaje / 100);
    gananciasPerdedor = bolsaInicial - (bolsaInicial * 0.4);

    printf("El ganador recibira $%.2f\n", gananciasGanador);
    printf("El perdedor recibira $%.2f\n", gananciasPerdedor);

    return 0;
}
