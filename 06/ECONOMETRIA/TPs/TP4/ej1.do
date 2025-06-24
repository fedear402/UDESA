cd "/Users/fedelopez/Library/CloudStorage/OneDrive-Personal/Documents/UDESA/06/ECONOMETRIA/TPs/TP4"
*1 limpia las variables y datos exististenes;
clear

*2 genera 100 observaciones vacias;
set obs 100

*3 pone un valor incial para la generacion de numeros aleatorios;
set seed 1233

*4 crea una variable con numeros aleatorios de una normal, escalados por 1000 y con media 250
gen crimen_pasado=int(invnormal(uniform())*1000+250)

*5 crea la variable policia como función lineal no exacta (se le agregó un error aleatorio salido de la normal y escalado por 5)
*La implicación de esto sería que la utilización de crimen pasado y la canitidad de policias para explciar el crimen presente
*manifestaria algun geado de muliticolinealidad porque policia es funcion de crimen pasado (un gregresor es función del otro)
gen policia=int(crimen_pasado/50+invnormal(uniform())*5)

* este comando devuelve la correlacion entre crimen pasado, que da 0.9, es decir, estan fuertemente relacionadas
* como mencionamos antes, dada esta alta correalcion no es muy util la interpretacion de los coeficientes
corr crimen_pasado policia


gen a=int(invnormal(uniform())*30+100)
gen b=int(invnormal(uniform())*15+5)
gen u=int(invnormal(uniform())*1+7)


gen crimen_actual=1.5*crimen_pasado -40*policia+2*b+u
gen v=int(invnormal(uniform()))*50


reg crimen_actual crimen_pasado policia b
outreg2 using out.doc, replace


reg crimen_actual policia b
outreg2 using out.doc, append

*adicional
reg crimen_pasado policia
outreg2 using out.doc, append

*-40 +  ( 47.99553 * 1.5)

reg crimen_actual crimen_pasado policia a b 
outreg2 using out.doc, append
replace crimen_pasado = crimen_pasado+v
reg crimen_actual crimen_pasado policia b
outreg2 using out.doc, append
