//Dado un año, elabore un algoritmo que determine si dicho año es bisiesto//

algoritmo lea_year
    var
    year : entero

inicio
    escribir("Introduce el año:")
    Leer(year)
    if(bisiesto <- ((year mod 4) = 0) ∧ ((year mod 100) <> 0) ∨ ((year mod 400) = 0)) //Formula p'ara saber si un año es bisiesto
       escribir("El año:" year "es bisiesto" )
       sino
       escribir("No es bisiesto")
fin

//Dados dos puntos en un plano de coodernadas cartesianas denotados como P1 =  (x1, y1) y (x2, y2). realizar un  algoritmo que permita calcular la pendiente de la recta que pasa por esos dos puntos//

algoritmo recta_pendiente 

    var 
    x1, y1, x2, y2, pendiente : reales

inicio
    Escribir("Introduce el valor de x1:")
    Leer(x1)
    escribir("Introduce el valor de y1:")
    Leer(y1)
    escribir("introduce el valor de x2:")
    Leer(x2)
    escribir("Introduce el valor de y2:")
    Leer(y2)

    pendiete <- (y2-y1)/(x2-x1)
        Escribir("Resultado:" pendiete)

fin

//Elabore un algoritmo que verifico si un numero entero es par//

algoritmo numero_par

     var
     numero : entero
     par : logico
inicio
    escribir("Inserte el numero entero:")
    leer(numero)
    par <- ((numero mod 2)=0)
    escribir("Resultado:" par)
fin

//Elabore un algoritmo que dado un numero que representa una longitud en millas nauticas, calcule su valor en kilometros//

algoritmo Millas_kilometros

    const
    numero_conversion <- 1.85325
    var
    numero_longitud , conversion_kilometros : real
inicio
    escribir("Introduce la cantidad de millas nauticas que desea convertir a kilometros:")
    leer(numero_longitud)
    conversion_kilometros <- numero_longitud * numero_conversion
    escribir("El resultado es:" conversion_kilometros)
fin

//dado un numero de 3 digitos, determine la suma de sus digitos, ejemplo: sea 192 el numero ingresado por teclado, el resultado seria 12=1+9+2

algoritmo suma_digitos

    var
    digito_principal, dig1, dig2, dig3, resultado : real

inicio
    escribir("ingrese el digito")
    leer(digito_principal)
    dig1 <- (digito_principal mod 10) //para sacar el ultimo digito, ejemplo: 192 = 2//
    dig2 <- ((digito_principal div 10) mod 10) //para sacar el segundo digito, ejemplo: 192 = 9//
    dig3 <- (digito_principal div 100) //para sacar el primer digito, ejemplo: 192 = 1//
    resultado <- (dig 3 + dig 2 + dig 1)
    escribir("seria:" dig3 "+" dig2 "+" dig1 "y su resultado seria:" resultado) //Quedaria algo así: Seria 1 + 9 + 2 y su resultado seria: 12
fin

//Elabore un algoritmo que dado el precio N de un producto, se le incremente un M% y muestre el resultado en pantalla//

algoritmo producto_porcentaje
    
    var
    precio_producto , incremento_porcentaje , resultado : real
    escribir("Precio del producto:")
    leer(precio_producto)
    escribir("ingrese el procentaje a sacar")
    leer(incremento_porcentaje)
    resultado <- (((precio_producto * incremento_porcentaje)/100) + precio_producto) //Forma de sacar porcentaje
    escribir("Resultado:" resultado)
fin

//Escribir un algoritmo al cual ingrese la velocidad de un automovil expresada en metros por segundo m/2 e imprima en pantalla la velocidad de kilometros por hora (km/h)

algoritmo metros_kilometros

    var
    metros_segundos , kilometros_horas : real

inicio
    escribir("Ingrese el valor de metros por segundo, que desea convertir a kilometros por hora")
    leer(metros_segundos) 
    kilometros_horas <- (metros_segundos * 3.6)
    escribir("Resultado:" kilometros_horas)
fin

//elabore un algoritmo que dado un numero de 4 digitos, lo invierta, ejemplo: sea 3467 el numero ingresado, el resultado seria 7643//

   algoritmo digito_invertido

    var
    numero_inicial , dig1, dig2, dig3, dig4, resultado : entero

inicio
    escribir("Ingrese el numero a invertir")
    leer(numero_inicial)
    dig1 <- (numero_inicial mod 10) //para sacar el ultimo numero, ejemplo : (5234 mod 10) = 4
    dig2 <- ((numero_inicial div 10) mod 10) //para sacar el tercer termino, ejemplo ((5234 div 10) mod 10) = 3
    dig3 <- ((numero_inicial div 100) mod 10) //para sacar el segundo termino, ejemplo ((5234 div 100) mod 10) = 2
    dig4 <- (numero_inicial div 1000) //para sacar el primer termino, ejemplo (5234 div 100) = 5
    resultado <- dig4 + (dig3 * 10) + (dig2 * 100) + (dig1 * 1000)
    escribir("Resultado:" resultado)
fin

//En una heladeria se tienen 4 tipos de empleados ordenados con su numero identificador y salario diario correspondiente: 1- cajero (25000bs/dia), 2- servidor(40000bs/dia), 
//3- preparador de mezclas (45000bs/dia) y 4 - mantenimiento (30000bs/Dia), El dueño de la tienda desea tener un programa donde solo ingrese dos numeros enteros que representen 
//al numero identificador del empleado y la cantidad de dias que trabajó en la semana  (6 dias maximo) 
//y el programa le mostrara por pantalla la cantidad en bolivares que el dueño le debe pagar al empleado que ingresó

algoritmo empleados

    var
    identificador_empleado, cantidad_dias, pago_empleado
    band <- verdad
        escribir("ingrese el identificador del empleado")
        leer(identificador_empleado)
        escribir("Ingrese el numero de días")
        leer(cantidad_dias)
        if(cantidad_dias>0 ∧ cantidad_dias<7)ent
          seleccion(identificador_empleado)
          caso 1:
          pago_empleado <- cantidad_dias * 25000 //Se usa condicional multiple y los casos seran los identificadores
          caso 2: 
          pago_empleado <- cantidad_dias * 40000
          caso 3:
          pago_empleado <- cantidad_dias * 45000
          caso 4:
          pago_empleado <- cantidad_dias * 30000
          sino
          band <- falso
          fsi
        fsi
        if(band = verdad)
        escribir("El monto a pagarle al empleado con la identificacion:" identificador_empleado "es de:" pago_empleado "bolivares")
        sino
        escribir("Identificador o dia no valido")
        fsi
        
Otra forma: 
        var
        identificador_empleado, cantidad_dias, pago_empleado
            escribir("ingrese el identificador del empleado")
            leer(identificador_empleado)
            escribir("Ingrese el numero de días")
            leer(cantidad_dias)
            if(cantidad_dias>0 ∧ cantidad_dias<7)ent
              seleccion(identificador_empleado)
              caso 1:
              escribir("El monto a pagarle al empleado con la identificacion:" identificador_empleado "es de:" cantidad_dias * 25000 "bolivares")
              caso 2: 
              escribir("El monto a pagarle al empleado con la identificacion:" identificador_empleado "es de:" cantidad_dias * 40000 "bolivares")
              caso 3:
              escribir("El monto a pagarle al empleado con la identificacion:" identificador_empleado "es de:" cantidad_dias * 45000 "bolivares")
              caso 4:
              escribir("El monto a pagarle al empleado con la identificacion:" identificador_empleado "es de:" cantidad_dias * 30000 "bolivares")
              sino
              escribir("identificador no valido")
              fsi
            sino
            escribir("Dia no valido")
            fsi
        
//Una empresa se encarga de la venta de DVD, los clientes puedan adquirir por cantidad. los precios son: 1000bs si compran menos de 9, 800bs si compran entre 10 y 99, 700bs si compran entre 100 y 499 
//600bs si compran mas de 500
//la ganancia del vendedor es de 8,5% de la venta, realizar un algoritmo que dado una cantidad de DVD calcule el precio total a pagar y la ganancia del vendedor.

algoritmo DvD

var
DvD: entero 
Ganancia_vendedor, precio_total : real
acumulador <- 0
inicio
escribir("Ingrese la cantidad de DvD")
leer(DvD)
if(DvD > 500)
  acumulador <- DvD * 600
  else
  if(DvD >= 100)
  acumulador <- DvD * 700
   else
   if(DvD >= 10)
   acumulador <- DvD * 800
    else
    if(DvD < 9)
    acumulador <- DvD * 1000
    fsi
fsi    
Escribir("el Vendedor obtiene una ganacia de:" acumulador * 0.085 "bolivares")
Escribir("el precio total a pagar sera de:" acumulador)

//Para la fabricacion de un producto determinado contribuyen dos diseñadores, un fabricante, y un distribuidor. cada diseñador gana el 25% del costo del producto, 
//el fabricante un 30% y el distribuidor un 20%. dado el costo del producto, elabora un algoritmo que determine la ganancia de cada uno//

algoritmo producto

var 
Costo_producto, Ganancia_Fabricante, Ganancia_distribuidor, ganancia_disenadores : real

inicio
escribir("Ingrese el costo del producto")
leer(Costo_producto)

ganancia_disenadores <- ((Costo_producto * 25)/100)
Ganancia_Fabricante <- ((Costo_producto * 30)/100)
Ganancia_distribuidor <- ((costo_producto * 20)/100)

Escribir("La ganancia de los diseñadores es de:" ganancia_disenadores "cada uno")
Escribir("La Ganacia de el fabricante es de:" Ganancia_Fabricante)
Escribir("La ganancia de el distribuidor es de:" Ganancia_distribuidor)

fin


//Se tiene un archivo numero.in, el cual tiene en cada linea un numero entero positivo n. Se requiere que diseñe un algoritmo que por cada n en el archivo de entrada, imprima una linea con n asteriscos en un archivo de salida asteriscos.out//

Algoritmo asteriscos

var 
a_numero, a_asterisco : archivo
i, num : entero

inicio

abrir_a(a_numero,"L","numero.in")
abrir_a(a_asterisco,"E","asteriscos.out")

mientras(fda(a_numero)=Falso)hacer
leer_a(a_numero,num)
    para (i<-1 hasta num en 1) hacer
    escribir_a(a_asterisco "*")
    fpara
    escribir(a_asterisco "\n") 
fmientras
cerrar_a(a_numero)
cerrar_a(a_asterisco)
Fin

//Un nuevo banco lo ha contratado para encriptar las claves de sus clientes. Como el banco es pequeño sus clientes tienen claves del 0 al 999. 
//un matematico que esta ayudando en el proyecto creo una formula para resolver dicho problema: Toma la clave y la separa en los digitos que la componen, luego toma cada digito, 
//le suma 5 y calcula su modulo 10 para obtener un nuevo digito valido. por ejemplo, si el codigo del cliente es 37 el procedimiento a seguir es el siguiente:

     //0 = (0+5) mod 10 = 5
//37 = 3 = (3+5) mod 10 = 8
     //7 = (7+5) mod 10 = 2

     //Usted debe diseñar que tome las claves de los clientes del banco del archivo llamado claves.in y guarde las claves encriptadas en un archivo claves.out

     algoritmo claves

     var
     clave, dig1, dig2, dig3 : entero
     a_claves, a_salidaclaves : archivo

     inicio
     abrir_a(a_claves,"L",claves.in)
     abrir_a(a_salidaclaves, "E",claves.out)

     mientras(fda(a_claves)=falso)hacer
     leer_a(a_claves,clave)
     dig1 <- (clave div 100) //sacar el primer digito
     dig2 <- ((clave div 10) mod 10) //Sacar el segundo digito
     dig3 <- (clave mod 10) //sacar tercer digito



     //Hacer un algoritmo, que dado un m, calcule la sumatoria del cuadrado de sus digitos// 

     Algoritmo Sumatoria_an

     funcion sumatoria(n:entero): entero //(Esto es el valor de retorno)//Elvalor del parametro (n:entero) es de valor
     var 
     acum, i
     inicio
     acum <- 0
     repetir
        i <- n mod 10 //La mejor forma de separar digitos)
        n <- n div 10
        acum <- acum + (i**2)
     mientras (n <> 0)
     retornar(acum)
     ffunc
        var
        m:entero
        inicio
        repetir
         leer(m) //Validar para evitar numeros que sean negativos y el 0//
        mientras(m<=0)
        escribir(sumatoria(m))
        fin

//

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











        
      
        