
* Seteamos directorio
cd "C:\Users\Rafael\Desktop\Cosas\Encare\Master UdeSA\Docencia Econometr�a\Tutorial 9"

* Borramos lo que pueda estar guardado en Stata
clear

* Fijamos que vamos a estar simulando observaciones para cada variable
set obs 100

* Fijamos una semilla
set seed 1000

* Generamos variables explicativas, t�rmino de error y a partir de eso variable
* explicada
gen X_1=invnormal(uniform())*5+1
gen X_2=invnormal(uniform())*2+4
gen X_3=invnormal(uniform())*3
gen u=invnormal(uniform())
gen Y = 3*X_1-2*X_2+X_3+u

* Corremos la regresi�n
reg Y X_1 X_2 X_3

* Generamos una variable que sea un error de medici�n y reemplazamos X_2 por su 
* versi�n "mal medida"
gen v=invnormal(uniform()*0.5)
replace X_2 = X_2+v

* Corremos nuevamente la regresi�n
reg Y X_1 X_2 X_3

* Ahora introducimos un error de medici�n constante
replace X_2 = X_2+3

* Corremos nuevamente la regresi�n
reg Y X_1 X_2 X_3

