#problema 1
   #Como seria possível ler a matriz identidade de dimensão 2? Sugestão: Use o comando array


#cria um array que vai ser preenchido de 1:8, as dimensões serão de 5 linhas e 8 colunas
result <- array(data=1:8,dim=c(5,8))
result

#problema 2
   #Usando o comando data.frame(), entre com a matriz de dados peso=(60,70,80) e altura=(160,150,170)



#problema 3
  #Dada uma lista com a nota de cinco alunos, por exemplo, {3,7,9,6,7} encontre a média, o desvio padrão e
#ordene as notas. Sugestão: usar as funções mean, sd, sort no vetor definido.

lista <- c(3,7,9,6,7)
#média
media_lista <- mean(lista)
#desvio padrão
desvio_lista <- sd(lista)
lista_ordenada = sort(lista)




