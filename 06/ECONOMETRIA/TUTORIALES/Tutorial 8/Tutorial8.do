/**********************************************************************
                          Universidad de San Andrés
                                 ECONOMETRÍA
                                  Tutorial 8
	              Sesgo por omisión de variables relevantes
 					  	 Semestre de Primavera 2023
						Llamas, Pacheco y Paganini
***********************************************************************/

**# Simulación: sesgo por variables omitidas

/* We will create values for some variables, using the "actual" values of the linear parameters involved. 
Then we will try to retrieve those parameters using OLS, what will let us experiment with some basic properties.
Let's generate i.i.d. data on wages, education, intelligence, two explanatory variables uncorrelated with 
education and intelligence but correlated with wages (a and b), and finally a variable (c) totally uncorrelated 
with all the former variables.*/
clear
set obs 100
set seed 1234

/* The variable intelligence will be the IQ of the individuals. IQs have approximately a normal distribution 
centered in 100 with a standard deviation of 20:*/
gen intelligence=int(invnormal(uniform())*20+100)
hist intelligence, norm

/* Since more intelligent people is expected to study more, the years of education will be equal to the intelligence
(over 10) plus a normally distributed noise with mean 0 and deviation 2. Finally, we will keep only the integer part 
of the numbers:*/
gen education=int(intelligence/10+invnormal(uniform())*2)
hist education, norm

/* I will stop repeating "enter browse to see the results". Then, feel free to do so whenever you want. 
Variable a (b) will be normally distributed with mean 10 (5) and standard deviation 2 (1). 
Variable "d" will be normally distributed with mean 150 and standard deviation 3.*/
gen a=int(invnormal(uniform())*2+10)
gen b=int(invnormal(uniform())*1+5)
gen c=int(invnormal(uniform())*3+150)

* The unobserved error term "u" will be normally distributed with mean 7 and standard deviation 1:
gen u=int(invnormal(uniform())*1+7)
hist u, norm

* Descriptive statistics table of the variables we have just created.
sum intelligence education a b c u

/* Wages will be the result of "intelligence" multiplied by 3, plus variables "a" and "b" multiplied 
by 1 and 2 respectively, plus the unobserved error term "u":*/
gen wage=3*intelligence+a+2*b+u

/* We estimate the "right" equation. The command for OLS is "reg" followed by the dependent variable 
and then the list of explanatory variables. We will include the option "robust", which indicates the
use of robust variance estimates:*/
reg wage intelligence a b

/* The estimated coefficients are accurately near the true values. Notice that "education" does not "affect" wages. 
Then, if we included "education" and "intelligence" in the regression, then the former should not appear with a 
significative coefficient:*/
reg wage education intelligence

/* Education is correlated with intelligence. Thus, if we forgot to include "intelligence" then the coefficient 
on "education" would be different from zero at reasonable confidence levels:*/ 
reg wage education

/* The reason is that in the last equation "intelligence" is in the error term (because it "affects" wages but 
it is not included in the regression), and "intelligence" is correlated with "education". 
Thus, the orthogonality condition is not satisfied.
 
The exclusion of "a" and "b" does not violate the exogeneity condition. 
Since "intelligence" is not correlated with "a" and "b", its coefficient should remain consistent and unbiased:*/
reg wage intelligence

* Including "a" and "b" should decrease the standard deviation of the coefficient on "intelligence":
reg wage intelligence a b

* Finally, let's see the effect of including an "irrelevant" variable ("d") in the "right" equation:
reg wage intelligence a b c

/* Compared to the "right" equation", in the regression that includes an irrelevant variable the standard errors are lower. Unless intelligence, a and b are uncorrelated in the sample with c, including c increases the variance for the estimators:*/
reg wage intelligence a b


**# Caso práctico: Carbon Emissions

cd "" // seteamos el directorio de trabajo

use "CarbonEmissions", clear // abrimos la base de datos


* Regresión base (sin controles)
reg CO2KG GDPPC

* Controlando por Fossil Fuel Energy Consumption
reg CO2KG GDPPC FUSE 

/*
Podemos ver que el coeficiente de GDPPC en este caso es menor. Es decir, 
* antes estabamos sobreestimando el coeficiente. 
*/

* Controlando por Women to Male Participation
reg CO2KG GDPPC PARTICIPW

/*
Podemos ver que el coeficiente de GDPPC en este caso es mayor. Es decir, 
* antes estabamos subestimando el coeficiente.
*/

* Controlando por Fossil Fuel Energy Consumption y Women Participation
reg CO2KG GDPPC FUSE PARTICIPW


