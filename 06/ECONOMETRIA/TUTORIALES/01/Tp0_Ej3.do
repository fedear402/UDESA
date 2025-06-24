global path "/Users/fedelopez/Library/CloudStorage/OneDrive-Personal/Documents/UDESA/06_Cuatrimestre/ECONOMETRIA/TOTORIALES/01/Datos_Tut0"
cd "$path"

clear
set obs 10
set seed 5
gen variable_x = _n
gen variable_y = rnormal(1,10)

. graph twoway (connected variable_y variable_x, mcolor(blue) lcolor(red)) ///
    , ytitle("Variable Y") xtitle("Variable X") ///
    title("Relacion") subtitle("X e Y") ///
    caption("Figura 1: Grafico a replicar", size(medium) position(6) margin(bottom) ///
    justification(center) alignment(middle)) ///
    clegend(region(lalign(center))) graphregion(fcolor(white))



/*
graph twoway connected x y, sort ///
	msymbol(circle) mcolor(blue) msize(medium) ///
    title("Relación entre variables") ///
    xtitle("x") ytitle("y") ///
	graphregion(color(white)) ///
    legend(order(1 "Data"))
