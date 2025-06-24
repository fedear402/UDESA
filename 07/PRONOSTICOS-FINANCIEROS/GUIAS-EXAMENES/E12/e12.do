cd "/Users/federicolopez/Library/CloudStorage/OneDrive-Personal/Documents/UDESA/07/PRONOSTICOS-FINANCIEROS/GUIAS-EXAMENES/E12"

clear
import excel "MSFT_2002_data.xlsx", sheet("MSFT Historical Data") cellrange(A1:B5001) firstrow
gen t=_n
tsset t
/*
a) En el archivo Excel MSFT_2002_data encuentra datos de precios de cierre diarios de
Microsoft para el período 28/05/2002 a 1/04/2022. Compute los retornos logarítmicos.
*/
gen ret_msft=ln(Price/Price[_n-1])




arch ret_msft, arch(1/1) garch(1/1)
*


tsappend, add(3) 
predict var_garch, variance dynamic(5001)
predict var1, variance     
gen vol_garch=sqrt(var_garch)    
list t vol_garch if t>5000 
