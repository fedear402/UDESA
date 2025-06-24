Grupo 1 - Post 6: Regularización

"Estimating global bank network connectedness" Demirer, Diebold, Liu, Yilmaz (2017) [https://www.sas.upenn.edu/~fdiebold/papers2/DDLYpaper.pdf](https://www.sas.upenn.edu/~fdiebold/papers2/DDLYpaper.pdf) 

En este paper, Diebold et al tratan de medir qué tan interconectados están los bancos _globalmente_. Diebold fue pionero de varias mediciones de interconexión entre instituciones financieras pero había trabajado solamente con datos de estados unidos; en este paper lo extiende a una base de datos con los 97 bancos más grandes de todo el mundo, no solo Estados Unidos. Usan datos de los activos de los bancos y bonos soberanos; buscan cuánto estas variables se relacionan con la interconexión entre bancos de dos maneras: geográficamente y dinámicamente.

La idea básica de Diebold en lo que se llama "índice de Diebold-Yilmaz" es "descomponer la varianza de los retornos de un banco _i_ y ver qué parte no es explicada por el mismo banco _i_, sino por el banco _j_."

Para solucionar la gran dimensionalidad de los datos (que era el problema de extender los datos de USA a datos globales) usa Elastic Net, específicamente sobre el modelo autoregresivo en el que basan la interconexión de los bancos. Los resultados los grafican y analizan los clusters.

Los resultados a los que llegan es que la volatilidad en bonos soberanos no tiene componente geográfico (los clusters no se explican por su ubicación), como si lo tienen los activos. Dinámicamente, concluyen que durante las crisis financieras aumenta significativamente la interconexión entre bancos.
