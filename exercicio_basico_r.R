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

#problema 5
  # Fazer um algoritmo para calcular e imprimir as 10 primeiras potências de 3

for(indice in 1:10){
  print(3^indice)
}

# problema 6
  #Escreva um laço que calcula o fatorial de um inteiro n. Sugestão: usar o while.



#problema 7
  #Escreva um laço que calcula o fatorial de um inteiro n. Sugestão: usar o while.
calcular_fatorial <- function(numero){
  retorno <- 1
  indice <- 1
  if(numero < 0) {
    stop("Não existe fatorial de número negativo")
  } else if(numero == 0) {
    #fatorial de 0 é 1
    return(retorno)
  }else{
    while(indice <= numero){
      retorno = retorno * indice
      indice <- indice +1
    }
  }
  return(retorno)
}

calcular_fatorial(8)


#problema 8
  #Um número é, por definição, primo se ele não tem divisores, exceto 1 e ele próprio. Prepara um algoritmo
      #para ler um número e verificar se este é primo ou não.

verifica_numero_primo <- function(numero){
  if(numero==1){
    return(TRUE)
  }else if (numero%%2==0){
    return (TRUE)  
  }else{
    return(FALSE)
  }
}

verifica_numero_primo(4)


