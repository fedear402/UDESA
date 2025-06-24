Encontrar k clústers $C_{1},\dots ,C_{k}$ tal que la varianza $W(C_{k})$ dentro del cluster sea minima: Distancia Euclidiana
$$
W(C_{k})=\frac{1}{|C_{k}|} \sum_{i,i' \in C_{k}}\sum_{j=1}^n (x_{ij}-x_{i'j})^2
$$
Algoritmo:
1. Asigna aleatoriamente un numero entre 1,..,K  a cada observacion
2. Itera hasta que converja:
	- Para los grupos marcados con cada k, computar el centroide (vector de medias)
	- Reasigna cada observación al cluster de cuyo centroide esta mas cerca

Hay que correrlo con varias posiciones inciales porque podria converger a un mínimo local.