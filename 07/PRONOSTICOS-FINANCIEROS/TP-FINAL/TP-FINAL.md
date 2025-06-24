# Introducción
En este trabajo vamos a analizar series de precios de compañías que cotizan en la bolsa de Buenos Aires cuyas actividades pertenezcan al rubro energético. En particular, identificamos 14 compañías con las que estaremos trabajando y que listamos en el Cuadro 1, junto con una descripción de su actividad principal obtenida del estado de resultados más reciente y una clasificación más específica sobre el área en el que desarrollan la mayor parte de su actividad. 

Compañías de un mismo sector son afectadas de manera similar por fenómenos económicos y son sujetos a los mismos regímenes regulatorios, enfrentan los mismos precios de commodities internacionales y deben responder a los mismos cambios en tecnología y demanda. Esas influencias compartidas podrían llevar a que hubiera cointegración entre los precios de sus activos, porque los inversores en general estarían respondiendo a señales muy similares. Ese es el propósito de este trabajo.

A lo largo, se utiliza el criterio de Ng-Perron para seleccionar el número óptimo de rezagos y un nivel de significatividad del 5\%. Obtuvimos la serie diaria de precios de los activos de \href{open.bymadata.com.ar} los cuales convertimos a logaritmos.

# Modelo y planteo del problema
Formalmente, hay cointegración entre dos procesos integrados si una combinación lineal de ambos es estacionaria, I(0). Esto nos dice que el spread entre las variables revierte a su media (mean-reverting); es decir que si divergen eventualmente hay un proceso de corrección de error (ECM) tal que en el largo plazo haya un equilibrio estacionario. 

 En la Figura 1 se ven las series de precios logarítmicos para todas las series que descargamos. Claramente no parece haber una relación de cointegración, a simple vista entre las 14 que incluimos. Es conveniente entonces pensar en separar las observaciones en grupos. En particular vamos a analizar cointegración para cada una de las clasificaciones anotadas en el Cuadro 1, las cuales fueron decididas a grandes rasgos por el ámbito de la mayoría de operaciones de la empresa. 
 
 En la Figura 2 aparece cada sector por separado. El primer panel muestra el sector de energía eléctrica excluyendo Central Costanera ya que a, diferencia de las demás, su actividad principal es la inversión en negocios relacionados a la electricidad. A simple vista, podría haber cointegración. Para los siguientes paneles difícilmente pueda afirmarse lo mismo. En el de Gas hay muchas variables incluidas y no todas parecen llevar una relación de cointegración, mientras que para el sector de Petróleo es muy posible que no pueda obtenerse algo útil. En el último panel seleccionamos 3 del sector de gas que parecen tener la mejor relación a lo largo de la serie: METR, CGPA y DGCU. 

 La idea sería que para las tres empresas incluidas para el sector de electricidad y para las tres seleccionadas del sector de gas haya al menos un vector de cointegración. 

# Datos y análisis

Comenzamos analizando si pueden existir relaciones de cointegración ente las variables. Es decir, por lo menos tienen que ser procesos integrados. En el archivo de STATA adjunto realizamos, para cada una de las variables, los tests ADF para confirmar el orden de integración y además observar si cuentan con tendencia deterministica lineal (tendencia en niveles) o cuadrática (tendencia en diferencias), lo cual va afectar la especificación de las restricción impuestas al modelo VEC.



## **ELECTRICIDAD**


La ecuación de cointegración es:
$$
Z=\text{EDN} -9.54 \cdot \text{TRAN} +11.79\cdot \text{CEPU}-6.81
$$
Tiene tendencia deterministica pero el valor del coeficiente es casi 0.



El test de causalidad de Granger de EDN a TRAN consiste en testear la significatividad conjunta de los rezagos de EDN sirven para predecir valores futuros de TRAN mejor que usando solo valores rezagados de TRAN y nada mas. En el archivo de Stata corremos el test y obtenemos que, en efecto, existe causalidad de granger en esa dirección.

Sabiendo eso, podemos implementar una función de impulso-respuesta para ver precisamente la reacción predicha de TRAN ante un shock del 1\% en EDN. El Cuadro \ref{tab:irf-elect} muestra que ante tal shock la variable TRAN aumenta permanentemente


## **GAS**
Vemos en el Cuadro \ref{tab:gas-vec} que a nivel 5\% tenemos 2 vectores de cointegración porque el estadístico es no rechaza (es mayor) cuando $R=2$ (si mirábamos a nivel 1\% habría que concluir que hay un solo vector de cointegración y que la relación no es tan fuerte). 

$$
Z_{1}=\text{CGPA}-1.16\cdot\text{METR}+0.25
$$
$$
Z_{2}=\text{DGCU}-1.05 \cdot \text{METR} -0.18
$$
## PETROLEO
Es evidente que entre las últimas 3 empresas que quedaron afuera no hay cointegración 

# Conclusión
No parece ser muy fuerte la evidencia a favor de cointegración entre los activos de empresas del sector energético. En este trabajo llegamos a ver cierto nivel de cointegración en el sector de energía eléctrica y gas. Sería interesante realizar este análisis para otros sectores, por ejemplo, para empresas del sector bancario. Esto puede llegar a ser útil para el desarrollo de estrategias de pairs trading, que es un aplicación muy común de la teoría de cointegración de Engle y Granger.