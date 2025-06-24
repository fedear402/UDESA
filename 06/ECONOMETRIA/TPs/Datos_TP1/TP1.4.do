* EJERCICIO 4
clear all
import excel "savings_investment.xlsx", firstrow
gen numerador = Investment * Savings
su numerador
local sumnum = r(sum)
gen cuadrados = Savings^2
su cuadrados
display `sumnum'/r(sum)
