#install.packages("DescTools")
library("DescTools")

#11. En un juego de poker (en el que un jugador recibe cinco cartas al azar de 
#un mazo de 52 cartas), ¿cual es la probabilidad de que una mano contenga:
#11) a)P = 1.5 x 10-5 b) P = 0.0039 c) P = 2.4 x 10^-4  d) P = 0.0014
manos_posibles = CombN(52, 5) #OMEGA = Todas las manos posibles con
                              #52 cartas en 5 posiciones unicas

#a) una escalera real (es decir, cinco cartas del mismo palo en secuencia 
#numerica, se admite la secuencia que termina en as)?
#a)P = 1.5 * 10^-5 #1.5e-05
a11 = 9 * 4 #son ¿10 o 9? formas de hacer escalera con 13 numeros en 5 posiciones
            #
p11a = a11/manos_posibles

#b) una escalera con cartas de al menos dos palos distintos? #P = 0.0039

#todas las escaleras menos - #Complemento de todos los que son iguales (a11)
b11 = 10 * (4^5) - a11 #
                       #
p11b = b11 / manos_posibles

# OK 
#c) un poker (o sea, cuatro cartas de igual numero)?
#????????????????????? c) P = 2.4 x 10^-4 
c11 = 13*4*12 #son 13 elecciones de cartas posibles pero tiene que ser la misma
              #cuatro veces, entonces 13*4. y eso po 12 ya que la proxima tiene
              #que ser alguna menos el numero que ya salió
P11c = c11 / manos_posibles #0.00024

#d) un full (es decir, tres cartas de un valor y dos cartas de otro)?
#d) P = 0.0014
d11 = (13 * 12) * 
  4 * 
  6
P11d = d11 / manos_posibles



#12. Si se forma una palabra de cinco letras al azar (es decir, todas las 
#secuencias de cinco letras tienen la misma probabilidad de salir), 
#¿cual es la probabilidad de que ninguna letra aparezca mas de una vez?
omega12 = 26^5
a12 = factorial(26)/factorial(21)
P12 = a12 / omega12

#  13. El Sr. Amnesio va a reinstalar el estereo de su auto, pero no recuerda el 
#codigo, un numero de 4 cifras. En cada una de las siguientes situaciones hallar 
#la probabilidad de que Amnesio acierte el codigo en un intento.
#13) a) P = 0.0004; b) P = 0.0014; c) P = 0.001035 

omega13 = 10^4
#a) Amnesio recuerda que las dos ultimas cifras del codigo son impares.
a13=10*10*5*5
p13a= 1 / as.numeric(a13)

#b) Amnesio recuerda que en el codigo hay un 5 y un 6 y que los cuatro numeros 
# son distintos. 0.0014
b13 = CombN(8, 2) * factorial(4)
4 * 3 * 8 * 7
p13b= 1 / as.numeric(b13)

#c) Amnesio recuerda que hay al menos un 5 y un 6 en el codigo 
#y que ningun numero se repite 3 veces. 0.001035 
#T
omega13=10^4
#A1 = AL MENOS UN 5 
#A2 = AL MENOS UN 6
A1c =  9^4 #Ningun 5
A2c =  9^4 #Ningun 6

A2 = omega13 - A2c
A1 = omega13 - A1c
A13C = A2 + A1 - (omega13-8^4)



p13cP1 = A13C / omega13
p13cP1 = 1 - p13cP1
C13 = 



#14. Un mono en una maquina de escribir tipea cada una de las 26 teclas del 
#alfabeto una
#sola vez, en un orden aleatorio. ¿Cual es la probabilidad de que la palabra 
#BORGES aparezca en algun lugar de la secuencia de letras? 

omega14 = as.numeric(factorial(26))
P_14 = as.numeric(factorial(21)) / omega14


#  15. Un comité esta formado por cinco mexicanos, dos brasile~nos, 
#tres argentinos y dos bolivianos.
#Si un subcomite de cuatro personas es elegido al azar, ¿cual es la probabilidad
#de que todas las nacionalidades esten representadas? ¿Y si el subcomite 
#tiene cinco personas? 15) a) P = 0.1212; b) P = 0.3030 

omega15a = CombN(12, 4) #formas en las que combinar 12 personas
                        #en grupos de 4
a15 = 5*2*3*2 # o cada uno combinatorio en 1
p_15a = a15 / omega15a

#?????????????????????
omega15b = CombN(12, 5)
b15 = a15 * 4
p_15b = b15/omega15b



#  16.   Un cine tiene 10 filas con 12 asientos (numerados del 1 al 12) cada una. 
#Doce amigos (5 de Estudiantes y 7 de Gimnasia) ocupan toda la primera fila. 
#¿Cual es la probabilidad de que los de Estudiantes esten sentados juntos y 
#los de Gimnasia tambien? P = 0.0025

omega16 = factorial(12)
a16 = (factorial(5) * factorial(7))*2
p_16 = a16 / omega16
