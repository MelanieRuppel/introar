#Que es R?
#Que es GIT?
#Que es commit? 
#Pull?
#Push

###### Directorios de trabajo
setwd("/Users/lio/Documents/GitHub/Intro_R_2023")  #Si necesitamos cambiar
setwd("c:/docs/mydir/Session01")  # Windo
getwd() #Donde estamos trabajando ahora?
#Comentarios se hacen utilizando el codigo #
# Comentarios
# comentario

#### Hola ####
print("hola")
# Paquetes
install.packages("tidyverse", dependencies=T) #instalamos los paquetes

library(tidyverse) #activamos lo paquetes en cada archivo

update.packages() #actualiza todos los paquetes que tengas instalados

#Operadores de Asignacion 
Variable = 43
Variable2= 45

#Tipos básicos de datos:
  
 #character: Almacena cadenas de caracteres, como letras, palabras o frases. Ejemplo: "Hola mundo".
character <- "Hola Mundo"
 #numerico: Almacena números reales, incluyendo decimales. Ejemplo: 3.14.
numerico = 5
 #integer: Almacena números enteros. Ejemplo: 5.
 #complex Almacena números complejos, que tienen una parte real y una parte imaginaria. Ejemplo: 1+2i.
  #logica: Almacena valores booleanos, que pueden ser TRUE o FALSE. Ejemplo: TRUE.
#date: Fecha
date = as.Date("1997/09/06", format = "yyyy/mm/dd")
date = as.Date("1997-09-06", format = "%Y-%m-%d")
character(length = 5)
as.numeric("2")

### Operadores


#Operadores Aritmeticos
   # + #Sumar
   # - #Restar
   # * #Multiplicar
   # / #Dividir
   # ** #Potencia 
  
#Completar
a = 10
b = 3
perro = b + a
log(perro)
suma
print(suma)
division 10/3


#Operadores de Comparacion
 #Mayor Que
 #Mayor o Igual Que
 #Menor que
#Menor o Igual que
 #Igual Que
 #no es igual

x = 5
y = 10
resultado x > y 
print(resultado)

#Operador Logico
x | y #Operador Logico OR (O)
x & y #Operador Logico AND (Y)

## Ayuda (Google a todo)
?lm #Busqueda Simple
??lm #Busqueda Amplia 

#### Objetos
## Recuerda que R es un lenguaje sensible a mayúsculas y minúsculas
(10 + 2) * 5
x <- (10 + 2) * 5  # <- es equivalente a =
x <- c(8,9,10,12,14,10,13,10,9)
x <- NA

#### Funciones

# Funciones 
x <- 1:20 #Creamos un Objeto 
y <- 20:40
z <- x + y
#Funciones de Informacion
?summary()#resumenes una función genérica que se utiliza para producir resúmenes de los resultados de varias funciones de ajuste de modelos. La función invoca métodos particulares que dependen de la clase del primer argumento.
 min(x) #minimo
 sd(x) #desviacion estandar
 rev(x) #revertir el orden
 length(x) 
 ?length()#Obtenga o establezca la longitud de vectores (incluidas listas) y factores, y de cualquier otro objeto R para el que se haya definido un método
 ?mode()# tipo de objeto.Obtenga o establezca el "modo" (una especie de "tipo") o el modo de almacenamiento de un objeto R.
 x <- (11:58)
 max(x) #maximo
 var(x) #varianza
 ?unique() #único devuelve un vector, marco de datos o matriz como x pero sin elementos/filas duplicadas
 length(x)
 log(x)
 
 median(x)
 sort(x)
 range(x)
 ?range()#range devuelve un vector que contiene el mínimo y el máximo de todos los argumentos dados
 sum(x)
 mean(x)
 rev(x)
 #El tipo de objeto
#La Longitud del objeto
 
#
 #mediana
 #suma
 #multiplicacion
 #maximos
 #minimos
 #rango
 #media
 #mediana
 #desviacion stadart
 #Varianza
 #logaritmo
 #logartmo base 10
 #revertir orden
 #valores unicos
 #ordenar
 #orden reverso

### Objetos
## Vectores

numeric_vector <- c(1.5, 2.3, 4.0)
entero_vector <- c(1L, 2L, 3L)
logico_vector <- c(TRUE, FALSE, TRUE)
caracteres_vector <- c("uno", "dos", "tres")

mode(logico_vector)
mode(entero_vector)
mode(numeric_vector)
mode(caracteres_vector)
# un vector solo aloja objetos del mismo tipo
#si el vector tiene diferentes tipos, R los transporta a un solo tipo

peso <- c(60, 72, 57, 90, 95, 72) 
altura <- c(1.75, 1.80, 1.65, 1.90, 1.74, 1.91)
plot(altura, peso) #funcion base para generar graficos
imc <- (peso/altura)^2
plot(peso,imc) #para graficos

## Matriz
X1 <- matrix(c(1, 2, 3, 11, 12, 13), nrow=2, ncol=3, byrow=TRUE, 
            dimnames=list(c("fila1", "fila2"), c("C.1", "C.2", "C.3")))

X2 <- matrix(c(10, 10, 10, 10, 10, 10), nrow=2, ncol=3, byrow=TRUE, 
            dimnames=list(c("fila1", "fila2"), c("C.1", "C.2", "C.3")))

X1 * X2

 #nombre de filas #rownames()
 #nombre de columnas #colnames()
 #Numero de filas #nrow()
 #numero de columnas #ncol()
 #dimensiones #dim
 #trasponer #t() 
rownames(X1)
colnames(X1)
nrow(X1)
ncol(X1)
dim(X1) 
t(X1)
#Manipulacion de Matrices
C.4 <- c(100, 1000) #crear vector para 4ta columna 
X1 <- cbind(X, C.4) #Agregar 4ta columna a X
fila3 <- c(10, 100, 1000) #crear fila 3
X2 <- rbind(X1, fila3) #agregar fila 3 a X

#Donde se fue la Columna 4?
fila3 <- c(10, 100, 1000, 10000) #crear fila 3
X3 <- rbind(X1, fila3) #agregar fila 3 a X


## Lista (grupos de cualquier tipo de objeto R)
lista_ejemplo <- list(numeric_vector, entero_vector, logico_vector, caracteres_vector)

## Marco de datos (Data Frame)
data <- data.frame(alpha=1:3, beta=4:6, gamma=7:9)
names(data)[3] <- "tres" #cambiar el nombre de columna
data$tres <- NULL #eliminar columna 3
#el signo de $ despues del nombre del data frame me da opciones de las columnas 
data$tres <- c (1,2,2) 
data$cuatro <- c (3,3,4)


# Reordenar marco de datos
data <- data.frame(id=1:3, peso=c(20, 27, 24), tamaño=c("pequeño", "grande", "mediano"))
data[c(1, 3, 2)] #corchete delante del marco de datos y seleciona el 
data[c("tamaño", "id", "peso")]
data2 <- data
data[-2]

## Factor
x <- factor(c("alpha", "beta", "gamma", "alpha", "beta"))
levels(x) #Distintos Valores unicos que puede tomar un factor
levels(x)[levels(x)=="beta"] <- "dos" #cambiamos beta por dos
levels(x)[3] <- "tres"  #cambiamos el tercer nivel por tres
levels(x) <- c("uno", "dos", "tres") #cambiamos todos los niveles por el vecto

# Convertir objetos
as.numeric() #Para convertir a Numeros
as.Date() #para convertir a fecha
as.character() #para convertir a texto
#selecionamos texto y convertimos a numero
data$peso <- as.numeric(data$peso) 
data.mat <- as.matrix(data) #Para convertir en Matriz

x <- 1:20 #Creamos un Objeto
x[3] <- 100 #introducir 100 en el lugar 3
x[c(2, 3)] <- 111 #Introcir 111 en el lugar 2 y 3
 data$id[2] <- "siembra"
data$peso[c(2,4
# Indexación
iris #Datos incluidos en R

iris$Petal.Length #columna 3
iris[3]
iris[c(1, 2)] #columna 1 y 2
iris #Numero de fila
iris #Datos en Columna 1
iris #Numero de fila y columna

#Creamos dos Vectores
Sepalos_largo <- iris$Sepal.Length #en cm
Petalos_largo <- iris$Petal.Length #en cm

#Selleccionar vectores
Sepalos_largo > 6
#se necesitan corchetes para selecionar datos
Sepalos_largo[Sepalos_largo > 6]
Petalos_largo[Petalos_largo > 5]
#para anidar condiciones podemos usar las operaciones logicas AND y OR
Petalos_largo[Sepalos_largo > 6 & Petalos_largo > 6]

# Generación de datos
1:10 # esto genera datos del 1 al 10
seq(from=1, to=10, by=1) #genera datos 
seq(1, 10, 1)
seq(length=9, from=1, to=5)
seq(1, 3, length=7)
c(1, 2, 3, 4, 5)
rep(1, 30)
rep(1:3, 10)
set.seed(123)
#Relevamiento de rindes, (50 parcelas, media de 2,8 t/ha, sd=0,8)
rnorm(50,2.8,0.8) #n = observaciones, mean = media, sd = desviacion standart
#https://www.tutorialspoint.com/r/r_normal_distribution.htm
hist(rnorm (50,2.8,1.2))
?rnorm()
# Gráficos
plot(Sepalos_largo)
plot(Petalos_largo)
plot(Sepalos_largo, type="p")
plot(Sepalos_largo, type="l")
plot(Sepalos_largo, type="b")
plot(y, xlim=c(40, 80), ylim=c(-20, 20))
plot(Sepalos_largo~Petalos_largo, main="Iris", xlab="Sepalos (cm)", ylab="Petalos (cm)")

#Generacion de Datos
plot(rnorm(50,2.8,0.8))
hist(rnorm(50,2.8,0.8))

#Paquete tidyverse

# Instalar y cargar tidyverse
install.packages("tidyverse")
library(tidyverse)

# Crear un data frame de ejemplo
data <- data.frame(
  ID = c(1, 2, 3, 4, 5),
  Nombre = c("Juan", "María", "Carlos", "Ana", "Pedro"),
  Edad = c(25, 30, 22, 28, 35)
)

# Filtrar personas mayores de 25 años y seleccionar solo las columnas de ID y Nombre
resultado <- data %>%
  filter(Edad > 25) %>%
  select(ID, Nombre)

# Imprimir el resultado
print(resultado)


#### Leer y escribir datos
## La separación decimal en R es . y no ,
#Datos en Millones de Guaranies
Ingreso <- read.csv("Datos/IngresoPromPoblacion_py.csv")
Ingreso <- read.table("Datos/IngresoPromPoblacion_py.csv", header=T,
                    na.strings = "4/", sep= ";", check.names = FALSE)

##Revisar Datos
head(Ingreso) #Primeros datos
tail(Ingreso) #Ultimos Datos
dim(Ingreso) #Tamaño 
names(Ingreso) #Nombre de Columnas
summary(Ingreso) #Sumario de Datos 

#Departamento con mayor ingreso promedio?

#Cambiar a datos largos
dato_largo <- Ingreso %>%
  gather(key = "year", value = "Cantidad", -Departamento) %>%
  mutate(year = as.integer(year))

#Limpiar Datos
dato_largo$Departamento <- str_trim(dato_largo$Departamento)  # Recortar espacios en blanco
dato_largo$Departamento <- str_replace(dato_largo$Departamento, ' ', '_')  # Reemplazar ciertos valores
any(is.na(dato_largo))  # Verificar valores faltantes (NAs)
dato_largo[is.na(dato_largo)] <- 0  # Reemplazar NAs con 0s

# Agrupar los datos por departamento y encontrar el departamento con el mayor ingreso promedio
Mayor_Departamento <- dato_largo %>%
  group_by(Departamento) %>%
  summarize(Cantidad_total = mean(Cantidad, na.rm = TRUE)) %>%
  slice(which.max(Cantidad_total)) %>%
  ungroup()

#Seleccionar Solo datos de Itapua
dato_largo_itapua <- dato_largo[dato_largo$Departamento == "Itapua", ]
Ingreso_Promedio_itapua <-  dato_largo_itapua$Cantidad

#Seleccionar Solo datos de Itapua
dato_largo_Boqueron <- dato_largo[dato_largo$Departamento == "Boqueron", ]
Ingreso_Promedio_Boqueron <-  dato_largo_Boqueron$Cantidad

#Departamentos con ingresos mayor a 2.5 luego del 2000
resultados <- dato_largo %>%
  filter(Cantidad > 2.5 & year > 2000) %>%
  select(Departamento, year, Cantidad)

#Graficar Resultados
# Crear una paleta de colores
colores <- rainbow(length(unique(resultados$Departamento)))

plot(resultados$Cantidad~resultados$year, col = colores[as.factor(resultados$Departamento)], main="Ingresos Promedio Paraguay", xlab="Año", ylab="Ingresos (Millones de Guaranies)")

legend("topright", legend = unique(resultados$Departamento), fill = colores, title = "Departamento")


