

#soma
2+2
#subtração
1-1
#divisão
3/5
#potência = ^ **
3^5
#raiz quadrada 
sqrt(4)
#resto da divisão
5%%4

#conciente da divisão
9%/%4


# criar objetos  <- ou =

x <- 0 
(y<-(3*x-1)^2)

# criar vetores
#vetor de 1 a 6
vetor1<-1:6
vetor1

#função c para adcionar valores
vetor2 <- c(2,4,5,6,7,1,5,6)

vetor3 <- array(1:6)

#acessar pelo indice
vetor3[3]
#acessar um intervalor
vetor3[3:6]

#criar uma matriz
M <- matrix(1:6, nrow=2, ncol=3)
#exibe toda a matrix
M
#exibe um elemento da matrix
M[1,3]
# toda segunda linha
M[2, ]

#dataframe guardam  tabelas de dados
tabela1 <- data.frame(Nome= c("Andre","João"), Idade = c(25,45))
tabela1

#exibe apenas os nomes
tabela1$Nome
tabela1[1]
#adicionar uma nova coluna
tabela1$Salario <- c(1200)
tabela1

#rbind e cbind

#remover um objeto da memoria
remove(vetor1)
rm (vetor2)

#mostrar o objetos da memoria
ls()

tabela2 <- data.frame(Time =c("Vasco", "São Paulo"), Estado = c("RJ","SP"), pontos = c(5,10))
tabela2
remove(tabela2)



#estrutura de condições
a <- 1 
b <- 2
c <- 3
if(a != b & b != c & c != a){
  cat("É um triângulo escaleno")
}else{
  cat("Não é um triângulo escaleno")
}

a <- 2
b <- 5

if(a>b){
  cat(a)
}else{
  cat(b)
}


ifelse(a>b, a, b)


# estrutura de repetição

for(i in 1:5){
  print(i^2)
}


#calcular a média manualmente com for
dados <- c(10,15,9,7,6,12,17)
n <- length(dados)
soma <- 0

for(i in 1:n){
  soma <- dados[i]+soma
}

media <- soma/n
media


#função para calcular a média
mean(dados)


#criar funções

#calcula a área de um triangulo
area <- function(base, altura){
  return ((base*altura)/2)
}

area(5,3)
#dessa forma a ordem dos parametros não é importante
area(altura=3, base=5)

#exibe o diretorio de trabalho corrente
getwd()

#lê o dados de um data.frame
#read.table
#outras funções mais úteis
#read.csv()
#read.csv2()
#read.delim()
#read.delim2()
pessoas <- read.csv(file = 'planilha.csv', header = TRUE, sep = ';', dec = ',')

#para escrever em um documento
#write.table()
#write.csv()
#write.csv2()









