#egr = read.table("esaligna.csv", header=TRUE, sep=",");
#head(cax)

#plot(dap~ht, data=egr)
#lines(lowess(dap, ht))



#exercicio 1 da aula 4

cervejas <-c("chope","lata","garrafa","chope","garrafa", "garrafa",
             "lata","lata","nenhuma","lata","garrafa","garrafa",
              "garrafa","lata","lata","lata","garrafa","lata","chope",
             "nenhuma", "garrafa","garrafa","garrafa","chope","garrafa",
             "garrafa","chope","garrafa","lata","lata")


dotchart(table(cervejas), labels = row.names(cervejas),
         cex = 0.9, xlab = "quantidade")


#graficos de barras
barplot(table(cervejas))


# exercicio 2 da aula 4
N <- 100   # Tamanho da População
n <- 8               # Tamanho da Amostra
I <- round(N/n)      # Intervalo de Amostragem (valor arredondado)
n0<-sample(I,1)
indice <- seq(n0, n0 + (n-1) * I, I)




#exercicio 4

tab <- c(35.9, 65.6 ,68.0 ,74.0, 77.2 , 78.5, 79.3, 80.0, 80.7,
         83.0 , 36.8, 65.7, 70.2, 75.0, 77.9 , 78.6, 79.6,
         80.0, 80.9, 83.1, 50.3, 67.2, 71.9, 75.3, 78.1,79.0, 79.6,
         80.0, 81.0, 83.7, 55.4, 67.8, 73.6, 75.6, 78.2, 79.2 ,
         79.9, 80.2, 81.6, 85.0, 60.7, 68.0, 73.9, 77.0,
         78.3, 79.2, 80.0, 80.5, 82.0, 90.6)
 
