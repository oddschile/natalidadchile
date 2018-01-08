#Importar los modulos necesarios para crear el gráfico

library(ggplot2)
library(plotly)

#crear el gráfico utilizando ggplot2

p <- ggplot(natalidad, aes(Inscritos, Tasa, color = Zona)) +
  geom_point(aes(size = Poblacion, frame = Periodo, ids = Region)) +
  
#Editar el titulo del gráfico y los títulos de los ejes

ggtitle("Natalidad en Chile 2000-2015")+
  labs(y="Tasa de Natalidad", x = "Nacidos Vivos (Inscritos)")

#Visulizar el gráfico
p <- ggplotly(p)
