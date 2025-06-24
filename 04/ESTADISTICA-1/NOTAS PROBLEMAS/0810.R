library(DescTools)
#####11111111111111111111111111111111111111111111111111111111111111111111111111111111111####
#OMEGA = MANERAS DE ELEGIR 2 CARTAS DE LAS 48
OMEGA1 = CombN(48, 2)

#A = FORMAS DE QUE ELIGIENDO DOS CARTAS SALGA ALGUNA DE LAS 24 PARES
A1 = CombN(24, 2)
PRO08101A = A1 / CombN(48, 2)
  24*24
  

#B= FORMAS DE QUE UNA SEA PAR Y LA OTRA IMPAR.  
  #No se van a repetir los eventos, elegis una de cada una
B1 = 24*24
PRO08101B =B1 / CombN(48, 2)


#C = QUE TENGAN LA MISMA PARIDAD = AMBAS PARES O AMBAS IMPARES
  # Son eventos disjuntos. se calculan por separado yse suman. cada una es la misma
  # probabilidad que A1, porque hay 24 pares y 24 impares
C1 = A1*2
PRO08101C = C1 / OMEGA1 
  # OTRA FORMA
  # C complemento de B(porque en B son una de cada uno) entonces sacando B
  # me da solo los que tinene  alos dos pares o a los dos impares
PRO08101C = 1 - PRO08101B
  

#D = AL MENOS UNA SEA 7
# probabilidad de que sean los dos 7 + probabilidad de que sea uno de los dos 7

# probabilidad de que sea uno de los dos 7 = una es alguno de los 4 sietes, y la otra carta
#     es alguna de las que no es 7
UNAES7 = 4 * 44
#probabilidad de que sean los dos 7
DOSSON7 = CombN(4, 2) # de los 4 sietes, formas de combinarlos en 2 cartas
D1 = DOSSON7 + UNAES7
PRO08101D = D1 / OMEGA1 

# otra posibilidad = desde el complemento

  ##EN DF
  sietes = c("7a", "7b", "7c", "7d")
  CombSet(sietes, 2)

#####22222222222222222222222222222222222222222222222222222222222222222222222222222222222####

    #En una kermes hay un juego de dados. Cada jugador elige cuantos dados va a tirar, y el objetivo
#es que al tirar esa cantidad de dados, haya al menos un 6 y ningun 1. Ana decide tirar tres
#dados, Beto cuatro y Carla cinco. ¿Quien es mas probable que logre el objetivo?

  nA = 3
  nB = 4
  nC = 5

###ANA
OMEGA2A = 6 ^ nA # Todas las maneras posibles de tirar n dados

# Evento f =  al menos un 6 + evento g = ningun 1
# son los casos donde se cumplan los dos = interseccion de f y de g
eventofA = 4 ^ nA # complemento de f interseccion g (complemento de f es todos los que no son 6
#                   interseccion con g es todos los que no son 6 y ademas no son 1)
eventogA = 5 ^ nA # todas las posibilidades para que sean los numeros que no son 1 (6-1)
A2 = eventogA - eventofA # EVENTO g incluye la interseccion con 
PRO08102A = A2 / OMEGA2A

###BETO
OMEGA2B = 6 ^ nB
eventofB = 4 ^ nB
eventogB = 5 ^ nB 
B2 = eventogB - eventofB
PRO08102B = B2 / OMEGA2B

###CARLA
OMEGA2C = 6 ^ nC
eventofC = 4 ^ nC
eventogC = 5 ^ nC
C2 = eventogC - eventofC
PRO08102C = C2 / OMEGA2C

#####33333333333333333333333333333333333333333333333333333333333333333333333333333333333####
#Una caja de confites tiene 17 confites de limon, 19 de frutilla y 14 de anana. Se extraen 3 confites
#al azar sin reposicion. ¿Cual es la probabilidad de que no todos tengan el mismo sabor?
  OMEGA3 = CombN((17 + 19 + 14), 3) 
#Maneras de sacar 3 confites de la caja sin orden y que no tengan el mismo sabor
#A3 = OMEGA - COMPLEMENTO
#complemento es la suma de los eventos donde son todos iguales
#COMPLEMENTOA = MANERAS DE ELEGIR TRES IGUALES
COMPLEMENTOA = CombN(14, 3) #MANERAS DE ELEGIR TRES DE ANANA
                + CombN(19, 3) #MANERAS DE ELEGIR TRES DE FRUTILLA
                + CombN(17, 3) #MANERAS DE ELEGIR TRES DE LIMON
  A3 = OMEGA3 - COMPLEMENTOA
PRO08103 = A3 / OMEGA3  

#####