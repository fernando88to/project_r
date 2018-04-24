#conexão com api rest
#https://cran.r-project.org/web/packages/jsonlite/vignettes/json-apis.html
#integração do r-studio server  

#a apresentação foi feita no rstudio
#mostra os pacotes instalados
library()

#instalar um pacote 
install.packages("ggplot2")
#carrega o projeto
library(ggplot2)
#ou 
require(ggplot2)

#pacotes ativos na sessão
#search()
#row.names =1, indica que coluna 1 é uma 
plan <- read.csv("PlanR.csv",header = TRUE, sep = ";", row.names = 1)
plan


plan2 <- read.csv("PlanR.csv",header = TRUE, sep = ";")
plan2

#1 indica que é média das linhas
apply(plan, 1, mean)
#2 identifica que é a coluna
apply(plan, 2, summary)

mean(plan)

pdf("saidaPdf.pdf")

plan2
#volta a saida para para ser na tela
#dev.off()

#vetores

#vetores só pode ter um tipo de dados
#vetor aqui começa no 1

a = c(1,3, 5); b=c(2,4,6)
d=c(a,b)#juntando os vetores
d
d[3]

v = c(1,2,3,4,5)
2*v


w =c(1)
v*w
v+w

w =c(1,2)

v*w
v+w
c(w,v,w)


#funções embutidas
sqrt(2)
exp(2)

abs(-17)

13/0#inf
sqrt(-17)
sqrt(-17+0i)


vet <- c(1,4,7,2,5,8)
#extremos
range(vet)
length(vet)
sum(vet)
#soma acumulada
cumsum(vet)
prod(vet)

mean(vet)
#medida de quão dispersa é um intervalo em cima da média
#quanto maior a variancia maior a dispersão
var(vet)

summary(vet)

#reverte a ordem do vetor
rev(vet)

#ordena o vetor
sort(vet)

sort(vet, decreasing = TRUE)

#te dar a ordem dos indices
order(vet)


rank(vet)

#gera o número de 1  a 10
1:10
# gera o número de 10 a 1
10:1

seq(2,20,2)

seq(2,20,2)

n=10
1:n-1#primeiro o vetor, depois o menos
1:(n-1) # agora ele respeita o parenteses


seq(from=1,to=10)
#começa no um, finaliza no 10, e vai somando de 2 em 2
seq(1,10,by=2)
#só 3 elementos
seq(1,10,length=3)


x = 1:3
rep(x, times=5)

rep(x, each=5)


#não entendi essa ?
y = rep(c(4,2,8,10,6), c(1,2,2,1,3))
y

unique(y)


#exercicio
#Construa um vetor com os números de 14 a 7 seguidos de 7
#números 4 seguido de 8 até 16 passo 2


#minha resposta
exercicio = seq(14,7)
exercicio = c(exercicio, rep(4:4,times=7))
exercicio = c(exercicio, 8,16,2)
exercicio

#resposta do professor

#o -1 é para ir incremetando
respostaprofessor = c(seq(14,7,-1), rep(c(4),7), seq(8,16,2)  )
respostaprofessor


#quando não tem valor é NA

# == IGUAL
# != diferente
# & e
# | ou
# ! negação

hip = 3<2 ; hip
x = 1:3; x<=2

0/0
# Nan representa número não disponível, que não existe



zz = barplot(8:10, main="Notas das Provas")


?Quotes


y= 5:-5; y

y[y<0] <- -y[y<0]; y

#atribuindo nomes para o elementos, inves de usar o indice
#lê a entrada, no caso aqui do teclado
aluno <- scan(what = character(3)) # melhor usar a de baixo, ou essa ou a linha de baixo
aluno <- c("Renata","Lili","Ari")
nota<-8:10
names(nota) <- aluno
w <- nota[c("Renata","Lili")]; w
  
attributes(w)


num <- 1:10; num
#atençao com essa seta
as.character(num) -> digito; digito
renum <- as.integer(digito); renum

#converte de string para boolean
nbool <- c("TRUE","FALSE"); nbool;
rebool  <- as.logical(nbool); rebool;


#matrizes
z  = 1:25; z
#dim é predefinido
attr(z, "dim") <- c(5,5)
z


mat = 1:150; mat
dim(mat) <-c(15,10)
mat


M <- matrix(1:6, nrow=2, ncol=3)
M

##prenche linha por linha
M <- matrix(1:6, nrow=2, ncol=3, byrow = TRUE)
M






