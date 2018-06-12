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