Considere una subasta a sobre cerrado en la que participan ocho jugadores y se ofrecen 8 copias de un objeto. Aquí, al haber más de un objeto, los jugadores no solo deben hacer una oferta, si no que tambien decir cuantas cantidades se quieren llevar al precio que dicen. Esto hace que las estrategias de los jugadores sean una oferta $O_{i}$ y una cantidad $Q_{i}$ que juntas hacen el plan contingente completo: ($O_{i}$, $Q_{i}$). Una vez que el vendedor recopila todas las ofertas y cantidades, las ordena de la mayor oferta a la menor y, arrancando desde la oferta más alta, va contando cuantas cantidades del objeto lleva. Cuando llega a la octava cantidad contada, la subasta termina y los ocho objetos se venden al precio que estaba el octavo objeto. A modo de ejemplo, si los ocho jugadores hacen las siguientes ofertas: 

$$
\begin{matrix}
\text{Jugador} & \text{Cantidad}  &  \text{Precio} \\
7  & 1 & 100 \\
3  & 3  & 95 \\
2  & 1 & 88\\
1  & 2  & 77 \\
6  & 4 & 70 \\
5  & 10 & 55 \\
4  & 1 & 43  \\
8  & 2 & 30 \\
\end{matrix}
$$

Empezando del pedido del Jugador 7 que fue el que colocó el precio más alto. Los ocho objetos se venden 1 al Jugador 7; 3 al Jugador 3; 1 al Jugador 2; 2 al Jugador 1 y 1 objeto al Jugador 6. Todo ellos se venderán al precio más bajo ingresado, que es el del jugador 6: $70 cada copia que se llevan. Los pagos son iguales a los trabajados en clase: Al ganar el objeto, se obtiene la valuaci´on (note que ahora la valuación es por objeto ganado) menos el precio que terminó quedando; si no se obtiene objeto se recibe 0 y, en caso de empate, gana objeto el jugador que tenga mayor valuación.

(a) Elija valuaciones (distintas entre sí) para los jugadores que le permitan encontrar un equilibrio de Nash donde todos los jugadores se lleven una copia del objeto. Luego, explique el equilibrio que propone, explicando por qué lo es.

b) Elija valuaciones (distintas entre sí) para los jugadores que le permitan encontrar un equilibrio de Nash donde la mitad de los jugadores se lleven todas las copias del objeto. Luego, explique el equilibrio que propone, explicando por qué lo es.


(PREGUNTA: la valuación de los jugadores es solo cuanto lo valoran o sino también pueden querer una sola unidad?  Por lo que entendí del ejercicio esa es la forma de sacarlo, pero no estoy del todo seguro 
RTA: Pueden poner valuación por unidad o una valuación total. Obvio que tienen que ser congruentes)

a)

Pagos si ganan: $Q_{i}(V_{i}-P_{i})$

Las ofertas van a cumplir $Q_{i}\geq1$. El que ofrezca el menor precio de todos los precios puede ofrecer cualquier número mayor o igual que 1. Ya que al repartirse, solo se va a llevar 1. El resto debe estar ofrececiendo 1.

No puede haber empate de ofertas. Si hubiera, se lo lleva uno con mayor valuación y no todos tienen una copia como buscamos que suceda.

Van a ser equilibrio mientras para todos los $i$ jugadores se cumpla $P_{i}\leq V_{i}$. Si no fuera asi, si se diera un caso con $P_{i}>V_{i}$, ese jugador no está eligiendo su mejor respuesta, ya que podría ofrecer un menor $P_{i}$ y quedarse afuera en el peor caso, o pagar menos y compensar su valuación en el mejor de los casos.

Hola agus, ahi lei casi todos los ejercicios 3 del parcialito pero me esta dando que casi todos lo hicieron mal . por eso que te queria consultar por si había algo que YO no estaba entendiendo bien.

Para mi las respuestas deberian ser alguna que cumpla que mientras el menor precio ofertado sea el menor precio posible (0, 1, o 0.1) va a ser equilibrio. Los otros que no son el menor pueden ofrecer cualquier cosa. 

Casi todos (salvo 3 o 4) me ponen que ofrecen sus valuaciones o que el menor ofrece su valuacion. Siendo beneficiosos (para todos) ofrecer menos, hasta ofrecer lo menos posible. 

Tambien varios me ponen cosas muy parecidas a las que puso este "En este caso nadie tiene incentivos a bajar su oferta y ofrecer menos que su valuación porque, al no conocer las ofertas del resto, corren el riesgo de no obtener el objeto que desean" o sea, nadie me lo expresa en terminos de **dadas las estrategias de los demas**. Pero eso ya es de conceptos que no se entendieron


b)
Creo que no me entendiste. 

Para un equilibrio con todos $Q_{i}=1$. Digmos que el minimo precio que se puede pedir es 1 y son numeros naturales. Las valuaciones son $v_{i}=i$. Si yo soy el jugador $j>1$ y veo que estan todos pidiendo $Q=1$, puedo ofrecer $Q_{j}=2$ y $P=1$, porque siempre el de menor valuacion va a quedar afuera (desempate es por mayor valuacion)




---

G7-Quallio-Spiller-Hernandez-Parcialito1_727369_238365309.pdf
a) Excelente poner varios ejemplos. Muy bien planteado. Lo del empate es solo si alguno se queda afuera. Como todos ofrecen 1 
b) El que proponen no es un equilibrio de Nash. Alguno de los primero cuatro puede ofrecer menos y **dado lo que hacen los demas** tener mayor utilidad, ya que si por ejemplo el 4 ofrece 29 en vez de 30, sube su utildiad y no cambia el orden en la lista.

G10-Bourdieu-Nine-Giedzinski-Parcialito1_727369_1044218288.pdf
a) No es equilibrio de Nash. Pueden ofrecer menos y **dado lo que hacen los demas**, tener mayor utilidad. Ejemplo, si el J8 ofrece 60, sube su utilidad y sigue comprando porque todos estan ofreciendo 1.
b) No es equilibrio de Nash. 