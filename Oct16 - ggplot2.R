# Unicode: ETF8 - para evitar errores de tilde (encoding internacional = amigo)

library(ggplot2)

mpg<-mpg
mtcars<-mtcars

## para entrar a una funcion de una libreria sin cargala, usamos ::

head(mpg)

ggplot(mpg, aes(class)) + geom_bar(fill = "red", color = "black") #tiene valor por defecto que es el conteo

calamar<- function(calamar) {calamar + 2} #Calamar para recordar que "X" no es un valor magico
calamar(2)

ggplot(mpg, aes(class)) + geom_point()#El aestetic Point necesita y (puntos no tienen sentido sin y)

#Ej2 : arreglarlo
ggplot(mpg, aes(class)) + geom_point( aes(y = displ)) #forma 1

ggplot(mpg) + geom_point( aes(x = class, y = displ))   #forma 2

ggplot(mpg, aes(x = class, y = displ)) + geom_point()  #forma 3

#Ej3
ggplot(mpg, aes(x = cty, y = displ)) + geom_point( aes(size = hwy, color = class)) #for 1

ggplot(mpg) + geom_point( aes(x = cty, y = displ, size = hwy, color = class))      #for 2

ggplot(mpg) + geom_point( aes(x = cty, y = displ, size = hwy, color = "class")) 
# error porque piensa que "class" es una nueva variable (no la del dataset)

ggplot(mpg) + geom_point( aes(x = cty, y = displ, size = hwy ), color = "blue")

#Ej4 - menor mapping posible
ggplot(mpg) + 
  geom_bar(aes(cty),fill = "grey") + 
  geom_point(aes(x = cty, y = displ, size = hwy, color = class))

graficaBarPoint<-ggplot(mpg, aes(x = cty)) + ggtitle("Ejercicio 4") +
  geom_bar(fill = "grey") + 
  geom_point(aes(y = displ, size = hwy, color = class))
graficaBarPoint

ggplot(mpg, aes(x = displ, cty)) + 
  geom_point() + 
  facet_grid(year~class)

ggplot(mpg, aes(x = displ, y = cty)) + 
  geom_point() + 
  facet_wrap(displ~cty) # CORREGIR ##################################################

#####     PLOTLY      ##########

# PLOTLY lo que hace es un html - asi no se renderiza en un jpeg por ej - te da el metadata#

library(plotly)


ggplotly(graficaBarPoint)

#              http://gallery.htmlwidgets.org/





