El efecto de variables macroeconómicas en las preferencias musicales

# Introducción: 

Este trabajo es parte del análisis sobre cómo afecta la situación de ciertas variables económicas en el bienestar de las personas y, en particular, hablamos del bienestar emocional. Utilizamos la música como reflejo y medición de la felicidad de las personas porque es un bien cultural de fácil acceso y costo bajo. Vamos a trabajar con la idea de que la música popular es un reflejo del bienestar de las personas y tratar de analizar si, por ejemplo, cuando la economía está peor (desempleo alto, inflación alta, por ejemplo) la gente busca escuchar música más alegre. Sería un interesante aporte a la literatura sobre la interrelación entre la cultura y la economía. 

Para hacer más explícita esta relación hipotética, proponemos un modelo muy simple que refleja lo explicado anteriormente. Vamos a decir que el agente deriva un valor de utilidad por consumir una cantidad de música $C$ (que podría ser medido en minutos) que es del tipo $M$ y en una situación económica $S$.

La variable $S$ es algún indicador económico normalizado al rango $[0,1]$ tal que 0 sea una mala situación económica. La variable $M$ puede ser discreta o continua y básicamente representa el *sentimiento* de la música que se está consumiendo. Una medida que se usa mucho es la 'valencia', que mencionaremos luego, la cual es continua en $[0,1]$ y pensada tal que 1 sea muy alegre. Si es discreta puede ser una categoría como el género o ser binaria (eg. $\{ \text{triste}=0, \text{alegre}=1 \}$). 

Por ejemplo $U(C=40,M=0.9,S=0.2)$ es la utilidad de consumir 40 minutos de música alegre en un contexto de dificultad económica. La función tendría esta forma
$$
U(C,M,S) =  C[\alpha M +\beta \cdot (1-M) \cdot f(S)+B]
$$
$B$ es la utilidad base que le proporcionaría escuchar musica sin importar el género o la situación económica. $\alpha$ y $\beta$ escalan la contribución de la situación económica y del tipo de musica a la utilidad. $f(S)$ es una función de la situación económica. Por ejemplo, puede ser lineal $f(S)=\gamma(1-S)$ o logarítmica $f(S)= \log (1+\gamma(1-S))$. La idea es que aumente con $S$. 

La forma de la función de utilidad la pensamos de tal manera que capture el efecto descrito previamente. Si $S$ es bajo (la situación económica es mala), entonces $f(S)$ es mayor, la contribución marginal de escuchar música alegre aumenta. Es decir, la musica alegre es relativamente más valiosa.


# Base de datos: 
**Variables macroeconómicas:**
Con la nueva API del Banco Central, Yahoo Finance y la EPH obtendríamos datos de estas variables: nivel de desempleo, tasa de inflación, tasa de interés, el índice MERVAL.

**Datos musicales**
Para obtener las canciones que fueron más populares en cada año vamos a tener que utilizar distintas fuentes, ya que, a diferencia de otros países como España o Mexico, solo recientemente se compila un ranking general de las canciones más escuchadas.
Estos son los datos que vamos a buscar usando web-scraping y la API de Spotify ya que algunas radios los compilaron en esa aplicación:
desde el 1985 tenemos los Ranking de la Rock and Pop
desde 1991 tenemos el rankings de la radio FM 105.5 (LOS40)
desde 1999 está el Ranking de MTV
desde 2018, Billboard publica el top 100 Argentina
desde 2021 CAPIF publica las canciones mas escuchadas de argentina 
Para muchos años hay overlapping y vamos a tratar de combinar los datos de estas distintas fuentes para obtener las 50 canciones mas populares de cada año. De esta manera tendríamos 39 años de datos para utilizar en la segunda etapa. La base de datos sería un diccionario con cada año (key) asociado una lista de canciones las cuales vamos a referenciar con el 'id' de esa canción en Spotify para que sea mas facil referenciar diferentes datos de esas canciones 
Con eso a armar algunas bases de datos: Para la primera vamos a usar la API de Spotify para obtener las caracteristicas de las canciones. En esta base de datos cada observación es una cancion y cada cancion va a tener asociadas estas columnas: `{  "acousticness": , "danceability":,  "duration_ms": ,  "energy": ,  "instrumentalness": ,  "key": ,  "liveness": ,  "loudness": ,  "mode": ,  "speechiness": ,  "tempo": ,  "time_signature": ,  "valence": ` (esas son las features principales, pero hay muchas mas que describen el contenido y la estructura musical más en detalle que también podemos usar)
La más importante de estas que vamos a usar es una que cuantifica el 'mood' (que tan negativa o positiva una canción) con la variable `valence` que está entre 0 y 1. La idea es que un valor más alto sería una canción más alegre. Con esta vamos a construir una variable `average_valence` por cada año.
Otra base de datos la vamos a armar con web-scraping de páginas web con letras de canciones como genius.com, letras.com y musixmatch.com. Esto nos da más libertad para explorar distintos aspectos de las canciones. Vamos a usar métodos de Natural Language Processing y la librería `nltk` y `vader` para clasificar las letras como positivas o negativas. Podríamos realizar otros análisis con las letras por ejemplo, también construir un índice de agresividad o de obscenidad y de esa manera ver si, quizás, en los momentos de crisis las canciones más escuchadas expresan más o menos sentimiento de enojo, por ejemplo.


# Metodologia


## Organizando los datos

Tenemos una impresionante cantidad de características de cada canción gracias a Spotify. Vamos a explorar estas canciones, primero, sin un enfoque supervisado. Esto nos permitiría llegar a la obvia categorización de canciones ya conocida: en géneros. 

Hay un módulo de la API Spotify que asocia un genero automáticamente decidido por su algoritmo, pero estos suelen ser extremadamente granulares y nos interesaría dividir el espacio de canciones en 7 u 8 géneros nada más; aquellos que consideramos serían los más importantes y prevalentes en Argentina, que es donde estamos haciendo el análisis. 

Podrían ser, por ejemplo, Rock, Pop, Folclore, Trap, Cumbia, Cuarteto, Tango; aunque eso va a depender del análisis en particular de los clusters y un encuadre subjetivo que nosotros le demos.

Usando el algoritmo de Lloyd, el cual comienza con un con k puntos aleatorios y va iterando los centroides hasta hallar estabilidad. De esta manera nos regresará los k clusters cuyas observaciones están mejor asociadas por su modo, timbre, modo, instrumentalidad y todas las otras características.

Cuáles géneros nos quedamos va a depender de los resultados del proceso y deberíamos probar más de un $k$ para ver que division tiene más sentido y se ajusta a la realidad.

## Los modelos
Para recapitular las ideas que hemos mencionado a lo largo del trabajo, tenemos como regresores las variables macroeconómicas mencionadas el la sección previa. Vamos a tener diferentes modelos para cada una de las medidas musicales en la variable dependiente:

Valencia: Continua, $[0,1]$. Es provista por default por Spotify y es usada por exelencia en la literatura para medir el sentimiento de una canción. Usamos regresión lineal

Letras:  Continua, $[0,1]$. Análisis de sentimiento de las letras obtenido con vader. Usamos regresión lineal

Genero: Discreta. $k$ categorías obtenidas con clustering de K-medias. La idea acá es analizar si la situación económica se relaciona con un género en particular u otro.  En cuanto al modelo que ajustaríamos en este caso, usamos regresión logística multinomial y no un análisis discriminante ya que consideramos que el supuesto de normalidad para estos regresores es demasiado fuerte.


Todos los géneros son inherentemente diferentes; tal vez la cumbia es siempre más alegre para el criterio de valencia mientras que quizás el trap obtiene sistemáticamente una valencia menor. Por esto pensamos que también sería valioso controlar los primeros dos modelos por el género. Esto nos permitiría ver para cada género como va variando el sentimiento de las canciones del género sin el ruido al ajustar una valencia alta solo porque el género suele ser más alto.

Dicho simplemente:
$$
\text{Valence} = \beta_{0} + \beta_{1} \text{Desemp} +\beta_{2}\text{Infla} +\beta_{3}\text{PBI}+\beta_{4}\text{Gen}
$$
$$
\text{Letra} = \beta_{0} + \beta_{1} \text{Desemp} +\beta_{2}\text{Infla} +\beta_{3}\text{PBI}+\beta_{4}\text{Gen}
$$
$$
P(G=g|C=c)=\frac{\exp \left\{ \beta_{g0} + \beta_{g1} \text{Desemp} +\beta_{g2}\text{Infla} +\beta_{g3}\text{PBI} \right\} }{1+\sum_{l=1}^{G-1}\exp \left\{ \beta_{l0} + \beta_{l1} \text{Desemp} +\beta_{l2}\text{Infla} +\beta_{l3}\text{PBI} \right\}}
$$

No hay que olvidar que cada observación tiene un valor temporal: el año del ranking al que pertenece. (el año en el que la canción fue muy popular). Esto es porque dijimos que estábamos trabajando con datos anuales. Un problema muy grave e insalvable, que probablemente condena toda la viabilidad del trabajo, es que vamos a tener grupos de 10/15 observaciones con el mismo valor en los regresores y distinta respuesta. Una solución sería asociar el mes de cada canción en el que fue publicada. Obviamente encontramos luego que no hay datos certeros de los regresores macroeconómicos por mes, mucho menos hace 40 años, asi que deberíamos limitarnos a estimaciones imprecisas. El supuesto entonces va a ser que la canción se hizo popular apenas salió al público. Luego de eso, tratamos todo como un problema de series de tiempo con unidades mensuales. Para seleccionar el modelo de serie de tiempo eligiríamos rezagos de las variables dependientes económicas usando el criterio AIC y BIC. 

La validación de modelos se realizará mediante técnicas de remuestreo: K-Fold Cross Validation, para garantizar la robustez de los resultados. En particular k=5 ya que el numero de observaciones no es tan grande.

## Posibles ajustes alternativos

Nos inclinamos por modelos clásicos lineales como regresión lineal o logística porque lo interesante del problema en particular es interpretar la relación entre las variables mas que predecirlas. De todas maneras, hay otros modelos que podemos probar que tal vez provean un mejor ajuste.

Por ejemplo, quizás usando splines o métodos basados en árboles llegamos a un menor error cuadrático medio. Un árbol simple puede ser una buena idea ya que es muy fácil de interpretar. Métodos basados en árboles más elaborados como Random Forest no serían apropiados ya que no tenemos un problema de dimensionalidad

## CONCLUSION Y LIMITACIONES

En esta propuesta discutimos formas


Una decisión que tomamos que puede ofuscar nuestros resultados es el largo de tiempo. Comenzar desde mitades de los 80. La ventaja es que hay mas variedad de situaciones económicas agregadas y de géneros populares, pero antes de 2010 no hay muchos datos muy granulares, solo anuales. Si en cambio usáramos datos para un largo de tiempo menor, podríamos tener rankings mensuales o incluso semanales pero solo desde hace 15 años en lugar de 40 años. No sería muy costoso hacer todo el análisis por separado para cada uno de los dos casos y analizar si obtenemos resultados diferentes y por qué.

Otra decision importante

