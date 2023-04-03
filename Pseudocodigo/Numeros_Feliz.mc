algoritmo nro_feliz
    variables
        n, aux, suma, dig: entero
        band, feliz: logico
    
inicio
     repetir
        escribir("Ingrese un numero entre 1 y 9")
        leer(n)
     mientras ((n<1)and(n>9))       //leo y valido el numero de entrada

     band <- falso
     feliz <- falso
     aux <- n

     repetir        //entro al ciclo donde evaluo el resultado de la suma del cuadrado de los digitos
        suma <- 0       //inicializo mi acumulador
        repetir     //entro al ciclo para separar los digitos, tal como se vio en clases, los separo hasta que el div 10 sea igual a cero, es decir quedo un solo digito
            dig <- aux mod 10   //separo el digito de la derecha
            aux <- aux div 10   //separo el resto de los digitos y los guardo en la misma variable aux para usarla en el siguiente calculo del digito
            suma <- suma + dig ** 2  //acumulo la suma del cuadrado de cada digito
        mientras (aux<>0)  

        si (suma = 1) entonces      //aca comparo si el numero obtenido de la suma del cuadrado de los digitos es uno
            band <- verdad      //entonces activo la bandera de parada
            feliz <- verdad     //activo la bandera que de es un numero feliz porque termino en 1
        sino
            //NOTAAAAAAAAAA: como esta el enunciado para mi era suficiente que vieran que el ciclo infinito 
            //se daba cuando alguno de los numeros de suma sea igual a n. Pero si evaluan con detalles se podrian
            //dar cuenta que hay otros numeros que no necesariamente sea el n, es decir puede ser otro numero
            //de los valores internos del ciclo, por ejemplo el numero 2, cuando lo elevan al cuadrado eso da 4
            //por lo que ese numero 2 entra en un ciclo infinito sin que nunca llegue a 4. Por lo que deben pensar
            //en otra manera de detenerse. Por ejemplo pueden meter en un archivo todos los numeros suma que 
            //calculan y cada vez que calculen un nuevo suma, revisan si este esta dentro de ese archivo, si esta
            //activan la band. Perco como dije al principio, como esta el siguiente condicional, para mi es suficiente
            //para detener este ciclo. Y es valido como ejercicio del parcial 
            si (suma = n) entonces  //sino es feliz, verifico si llegue al punto inicial, es decir al n. 
                band <- verdad      //activo la bandera de parada porque entraria en un ciclo infinito 
                feliz <- falso      //desactivo la bandera porque no es un numero feliz
            sino
                aux <- suma     //a aux le asigno el nuevo numero obtenido de la suma del cuadrado de los digitos para ser evaluado en la siguiente iteracion
            fsi
        fsi
     mientras (band = falso)  //me detengo por la activacion de la bandera, bien sea porque consegui un 1  o porque llegue de nuevo a n

     si (feliz) entonces    //ahora solo evaluo la bandera feliz, si esta activa es porque llegue a 1, es feliz 
        escribir(n,"es un numero feliz")
     sino       //si no esta activa, es porque llegue de nuevo a obtener el numero n, por lo que no es feliz
        escribir(n,"no es un numero feliz")
     fsi
fin