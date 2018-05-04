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

#problema 4
 #Dada uma lista com a nota de 10 alunos de duas turma, por exemplo, {3,7,9,6,7,6,8,9,4,9} e {3,6,9,6,7,7,8,8,4,8}.
      #Encontre um algoritmo que calcule quantos alunos possuem a mesma nota.

turma_a <- c(3,7,9,6,7,6,8,9,4,9)
turma_b <- c(3,6,9,6,7,7,8,8,4,8)
as_duas_turmas = c(turma_a, turma_b)
as_duas_turmas_sem_nota_repetida = unique(as_duas_turmas)


    
    
quantidade_alunos_mesma_nota=0
for(nota in as_duas_turmas_sem_nota_repetida){
  #tem alguma nota que se repete
  if(sum(as_duas_turmas==nota) > 1){
    quantidade_alunos_mesma_nota <- sum(as_duas_turmas==nota) + quantidade_alunos_mesma_nota
    
  }
}




