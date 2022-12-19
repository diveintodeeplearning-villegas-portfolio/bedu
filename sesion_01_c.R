######################## SESIÓN 1: INTRODUCCIÓN A R  ########################
###############################################################################
## EJEMPLO 1: TIPOS DE DATOS

"R es un lenguaje de programación orientada a objetos (OOP), por lo que todos los
elementos con los que opera son en realidad objetos, que son asignados a variables
para su almacenamiento local.

Dentro del lenguaje de R, existen una gran cantidad de objetos que deben conocerse
a detalle para saber cómo pueden operar cada uno de ellos.

En esta primera sesión comenzaremos a ver los objetos más importantes, sin embargo,
a lo largo de todo el módulo veremos una gran cantidad de ellos.

Veamos cómo asignar un objeto a una variable:"

var.1 <- "Hola Mundo"
var.2 <- 5L
var.3 <- 5
var.4 <- 2.7076
var.5 <- TRUE

"Cada uno de estos objetos pertenece a una clase particular, la cual puede entenderse
como una huella digital que contiene toda los atributos, propiedades y características
asociadas a cada tipo de objeto.

Para identificar a qué clase pertence un objeto, podemos aplicar la siguiente función:"

class(var.1)
class(var.2)
class(var.3)
class(var.4)
class(var.5)

"Conocer el tipo de clase es fundamental para poder realizar operaciones, ya que
de ellas dependerá el resultado

Las operaciones entre variabes numéricas no causan confusión, pero vamos a
probar las siguientes operaciones para ver algunas implicaciones:"

#

## EJEMPLO 2: VECTORES Y MATRICES

"Los vectores y matrices son otro tipo de objetos en R, quizá los más importantes
debido a su relación con las tablas de datos y varios métodos estadísticos.

Los vectores en R representan una colección de uno o más objetos del mismo tiempo,
los cuales definen el tipo de vector y su longitud.

Veamos cómo crear un vector con la función 'c()':"

#

"Un punto importante de los vectores es que se puede acceder a sus elementos 
através de la indexación:"
#

"Los vectores también pueden crearse a partir de secuencias, repeticiones e
incluso otros vectores"

d = c(a,b)
class(c)
is.vector(c)

(e <- seq(from=0, to=10, by=2)) #Observa qué hacen los paréntesis

(f <- seq(from=10, to=0, by=-2))

(g <- rep(5, times=6))

"Por su parte, las matrices se conforman por una colección de vectores y están 
definidas por filas y columnas, por lo que son objetos en dos dimensiones de forma
rectangular.

Al igual que los vectores, las matrices sólo pueden contener objetos del mismo tipo
en sus celdas; usualmente numéricos o booleanos.

La forma más sencilla de crear matrices es a partir se sequencias:"

#

"Las matrices también pueden crearse a partir de la combinación de vectores, ya 
sea por filas o por columnas"

vector.1 <- c(1,2,3,4,5)
vector.2 <- c(6,7,8,9,10)
vector.3 <- c(11,12,13,14,15)

#

"Para acceder a los elementos de una matriz, se puede usar la misma lógica que en los 
vectores, pero indicando posición en las filas y en las columnas"

m[1,1]

m[,1] # Esto implica tomar el primer vector, y por definición, todos los vectores son columnas en R

m.2[1:2,2:3]

m.3[c(1:2,5), 2:3]

"En arreglos como vectores y matrices se pueden evaluar operaciones lógicas, las 
cuales pueden ser utilizadas para extraer subconjuntos o para crear arreglos de booleans"
#

"Algunas operaciones básicas de matrices
Producto matricial: A %*% B
Producto elemento a elemento: A*B
Determinante: det(A)
Extraer la diagonal: diag(A)
Resolver un sistema de ecuaciones lineales (( Ax=b )): solve(A,b)
Inversa: solve(A)
Autovalores y autovectores: eigen(A)"

## EJEMPLO 3: Listas y Dataframes

"Las listas son muy parecidas a los vectores, salvo que estas pueden tener objetos
de distinto tipo como variables, vectores, matrices, dataframes e incluso otros listas.

Para crea una lista, basta llamar la función list() con la serie de elementos a 
guardar como argumentos de la función identificados por un nombre:
"
lista <- list(string = "Pepe", 
              numeric = 3,
              vector = c(4, 7, 9),
              matrix = matrix(1:9, nrow = 3, ncol = 3),
              lista2 = list(a = "Hola", b = "Mundo")
              )
class(lista)
lista

"La listas poseen atributos a los cuales se puede acceder mediante el operador $"
#

"Los Dataframe son muy parecidos a las matrices, salvo que estos pueden tener 
vectores de distintos tipos.

Para crea un DataFrame, basta llamar la función data.frame() y agregar los vectores
columnas con su respectivo nombre:
"
x <- 10:21
y <- letters[x]

df <- data.frame(edad=10:21, 
                 grupo=letters[x]
                 )
class(df)
df

str(df)
names(df)

"Se pueden agregar y eliminar columnas de ls siguiente manera"
#

"Los Dataframes pueden descargarse en una gran variedad de formatos, siendo .csv 
uno de los más utilizados"
#

## EJEMPLO 4: INSTALACIÓN Y CARGA DE PAQUETERÍAS

"En R, la instalación de paqueterías sólo se realiza una ves a nivel del ambiente,
por lo que no es necesario instalar nuevamente al iniciar otra sesión."
#

"Sin embargo, instalar una paquetería no implica que ya estará disponible para 
su uso. En cada sesión deben llamarse las librerías a utilizar de la siguiente forma:"
#