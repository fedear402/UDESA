library(DescTools)
#1###############################################
DF1 <- data.frame(BIOLOGIA=c(52, 38),
        EXACTAS=c(40, 32),
        HUMANAS=c(58, 80))
        rownames(DF1) <- c('Masculino', 'Femenino')
        
OMEGA1 = sum(DF1)

## P_1A QUE SEA FEMENINO Y DE EL AREA DE HUMANAS
P_1A = 80 / OMEGA1 #80 son fem y de humanas (interseccion)

## P_1B Que sea masculino y no de biologia
P_1B = (40 + 58) / OMEGA1

## P_1C que sea femenino (F) dado que es de humanidades (H)
## P_FyH / P(H)
P_FyH = 80 / OMEGA1 #probabilidad de elegir una mujer de humanidades
P_F = (38 + 32 + 80) / OMEGA1 #Probabilidad de elegir una mujer
P_H = (58 + 80) / OMEGA1 #Probabilidad de elegir uno de humanidades
P_1C = P_FyH / P_H

## P_1D que sea de biologia (B) dado que es masculino (M)
##Bayes
## P_1D = P_ByM / P_M
P_ByM = 52 / OMEGA1 #prob de que sea masc y de bio
P_M = (52 + 40 + 58)/ OMEGA1 #Prob de que sea masc
P_1D = P_ByM / P_M

#4###############################################
P_DF.F = 0.95
P_DB.F = 0.05  
P_DB.B = 0.97 
P_DF.B = 0.03 
P_F = 0.005 
P_B = 0.995

P1_B.DF = P_DF.B * P_B / (P_DF.B * P_B + P_DF.F * P_F)
P_4 = P1_B.DF


#5###############################################
P5_A = 0.5 #SACAR DE A CARA
P5_B = 0.5 #SACAR DE B SECA
P5_RA  = 3/5 #SACAR ROJA DE A
P5_RB  = 2/7 #SACAR ROJA DE B

#P5_R = PROB DE SACAR R DE A [INTER] EVENTOS EN LOS QUE SACO DE A
#      [UNION]  
#      PROB DE SACAR R DE B [INTER] EVENTOS EN LOS QUE SACO DE B

#P5_R = P5_RA [INTER] A [UNION] P5_RB [INTER] B

P5_RB.B = P5_RB * P5_B / 
  P5_B
P5_RA.A = P5_RA  * P5_A /
  P5_A

P_5a = P5_RA.A * P5_A  + P5_RB.B * P5_B

P5_A.R = P5_RA.A * P5_A / P_5a
P_5b  = P5_A.R

#6###############################################
P6_RDA = 4 / 9
P6_NRDA = 5 / 9 

P6_RDB.RDA = 3 / 10
P6_RDB.NRDA = 2 / 10

P6_RDByRDA = P6_RDB.RDA * P6_RDA
P6_RDByNRDA = P6_RDB.NRDA * P6_NRDA

P_6a = P6_RDByRDA + P6_RDByNRDA

P6_RDA.RDB = P6_RDB.RDA * P6_RDA / 
  (P6_RDB.RDA * P6_RDA + P6_RDB.NRDA * P6_NRDA)
P_6b = P6_RDA.RDB

#7##############################################
# 0.3478
P7_REC.A = 0.02
P7_REC.M = 0.01
P7_REC.B = 0.0025
P7_A = 0.1
P7_M = 0.2
P7_B = 0.7

P7_REC = ( P7_REC.A * P7_A ) + ( P7_REC.B * P7_B ) + (P7_REC.M * P7_M)
P7_A.REC = P7_REC.A * P7_A / P7_REC
P_7 = P7_A.REC

#8###############################################
P8_F.1T = 0.01
P8_B.1T = 0.99

P8_F.T2 = 0.02
P8_B.T2 = 0.98 

P8_F.T3 = 0.05
P8_B.T3 = 0.95 

P8_F = P8_F.1T * 1/3 + P8_F.T2 * 1/3 + P8_F.T3  * 1/3
P_8a = P8_F
P8_T3.F = (P8_F.T3 * 1/3) / (P8_F.T3 * 1/3 + P8_F.T2 * 1/3 + P8_F.1T * 1/3)
P_8b = P8_T3.F 


#9###############################################
# a 0.4844 / 0.696
# b 0.06392 / 0.6142 / 0.32188
P9_A1 = 0.1
P9_M1 = 0.4
P9_B1 = 0.5 

P9_A2.A1 = 0.45
P9_M2.A1 = 0.48
P9_B2.A1 = 0.07
P9_A2.M1 = 0.05
P9_M2.M1 = 0.70
P9_B2.M1 = 0.25
P9_A2.B1 = 0.01
P9_M2.B1 = 0.5
P9_B2.B1 = 0.49

###AA
P9_M1.M2 = (P9_M2.M1 * P9_M1) / 
  ( (P9_M2.M1 * P9_M1) + (P9_M2.B1 * P9_B1) + (P9_M2.A1 * P9_A1) )
P_9aa = P9_M1.M2


###AB
P9_B1.B2 = (P9_B2.B1 * P9_B1) / 
  ( (P9_B2.B1 * P9_B1) + (P9_B2.M1 * P9_M1) + (P9_B2.A1 * P9_A1) )
P_9ab = P9_B1.B2

###BA
P9_M2 = ( (P9_M2.M1 * P9_M1) + (P9_M2.B1 * P9_B1) + (P9_M2.A1 * P9_A1) )
P9_B2 = ( (P9_B2.B1 * P9_B1) + (P9_B2.M1 * P9_M1) + (P9_B2.A1 * P9_A1) )
P9_A2 = 1 - P_B2 - P_M2

#b
P_A3 = P9_A2.A1 * P9_A2 + P9_A2.B1 * P9_B2 + P9_A2.M1 * P9_M2


#10###############################################
#0.06
P10_C = 0.3
P10_B.C = 0.4 
P10_A.ByC = 0.5


P_ByC = P10_B.C * P10_C
P_ByC = 0.4*0.3 = 0.12 
P10_AyByC =  P10_A.ByC * P_ByC
P_10 = P10_AyByC  


#15###############################################
#

3/4 * 2/3 = 0.5 
( 1/4 * 2/3 ) +( 3/4 * 1/3)

#16###############################################
