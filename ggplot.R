#instalar ggplot2 antes
require(ggplot2)# se estiver carregada ele ignora é melhor que o library

head(mtcars);

#qual é a diferença da de tabela para matriz

ggplot(data=mtcars, aes(x=disp, y= mpg)) + geom_point()

#ou
plot(disp~mpg, data=mtcars)


ggplot(data=mtcars, aes(x=disp, y= mpg, colour= as.factor(am))) + geom_point()

ggplot(data=mtcars, aes(x=disp, y= mpg, colour= cyl)) + geom_point()


ggplot(data=mtcars, aes(x=disp, y= mpg, colour= cyl, size=wt)) + geom_point()


ggplot(data=mtcars, aes(x=disp, y= mpg, colour= cyl)) + geom_point() + labs(subtitle=" ", 
                                                                            y="Disperção(mpg)", 
                                                                            x="Consumo(disp)", 

                                                                            title="", 
                                                                            caption = "Source: base do tjto")


ggplot(mtcars, aes(x=mpg))+
  geom_histogram()



#Exercicios

#1 Como adicionar um título a um gráfico.
ggplot(mtcars, aes(x=mpg))+
  geom_histogram()+
labs(title="Título do Gráfico", 
     caption = "Source: base do tjto")


#2. Como alterar a posição da legenda de um gráfico? Como removê-la?

ggplot(mtcars, aes(x=disp, y= mpg)) + 
  geom_boxplot()
+ theme(legend.position="bottom")


# 3. Como personalizar os eixos de um gráfico?


ggplot(data=mtcars, aes(x=disp, y= mpg, colour= cyl)) +
  geom_point() + labs(subtitle=" ", y="Disperção(mpg)",x="Consumo(disp)",
                      title="",caption = "Source: base do tjto")

# 4 Faça um gráfico de barras mostrando 
#o número de filmes por ano de 1990 para cá.

require(ggplot2movies)

d <- movies
studentdata <- movies[movies$year > 1990,]

ggplot(studentdata, aes(x = as.factor(year))) + 
  geom_bar()


ggplot(d, aes(x = as.factor(year))) + 
  geom_bar() +
  lims(x=c(1990,2018))

ggplot(d, aes(x = year)) + 
  geom_bar() +
  lims(x=c(1990,2018))



ggplot(movies,aes(x = year))+geom_bar()+lims(x = c(1990,2010))

