#distribuição normal
# rnorm

help("dnbinom")



#Distribuição binomial
  # 1 - Consiste de n ensaios
  # 2 - Cada ensaio possui dois resultados possíveis
  # 3 - os ensaios são independetes( com probabilidade p constantes de ocorrer um sim)

#exemplo na sala 5 mulheres e 2 homens(com reposição), vai selecionar 
  #3 pessoas(3 ensaios)

#sem reposição não é binomial


#observação:
  #10000 crianças verificar as que nasceram com menos de 2 kilos, se a amostra é muito grande
  # e não tem reposição acaba que se usa binomial, pois mesmo sem a reposição fica 
  #insignificantes


#exercicio 1
#Lançar, de forma imparcial, uma moeda, perfeitamente equilibrada, cinco
#vezes. Calcule as seguintes probalidades

  #a)ocorrer exatamente 3 caras

# n 5, k = 3, p = 0,5 

ocorrer_3_vezes <- dbinom(3,5, 1/2)# checar se está certo
  #b) ocorrer 60% ou mais de caras

#dbinom = probaliidade
#qbinom = quantidade


#60% ou mais é  3 caras no mininmos
#ocorrer_60_ou_mais <- sum(qbinom(0.6:1,5, 1/2))# checar se está certo

ocorrer_60_ou_mais <- sum(dbinom(3:5,5, 1/2))# checar se está certo


#n=5 p=5 k=3,4,5


#2) Repita o item B, agora pra 10 lançamentos

#n=10 , p=0,5 k =6,7,8,9,10

x <- sum(dbinom(6:10,10, 1/2 ))




# Exercício 3
# Um certo processo industrial pode, no máximo, produzir 10% de itens 
# defeituosos. Uma amostra aleatória de 10 itens acusou 3 defeitos. 
# Calcule a probabilidade de ocorrem, numa amostra de n=10, três
# ou mais itens defeituosos


#os 10% é o que o cliente quer, mas não faz parte da estatística
#n=10, p =0,3  k=3,....,10

tres_ou_mais_itens_defeituosos <- sum(dbinom(3:10,10, 0.3))




# exercício 4 
# Uma companhia de seguros vendeu apólices para 5 pessoas, todas da mesma
# idade de com boa saúde. De acordo com as tabelas atuais, a probalidade
# de que uma pessoa daquela idade esteja viva daqui a 30 anos é de 2/3.
# Calcule a probalidade de que, daqui a 30 anos:

#a) Exatamente duas pessoas estejam vivas;
#b) Todas as pessoas estejam vivas
#c) Pelo menos 3 pessoas estejam vivas





# Exercício 5 
# Admitindo igualdade de probabilidade de nascimento de meninos e meninas,
# qual a probalidade de, numa família de 6 crianças, ocorrer:

# a) 3 meninos 3 meninas
# b) 4 ou mais meninas
# 


#Exercicio 1 
#Suponha que o tempo necessário para atendimento de clientes em uma 
#central de atendimento telefonico siga uma distribuição normal da média de 
#8 minutos e desvio padrão de 2 minutos

#a) qual a probabilidade de que um atendimento dure menos de 5 minutos
d<-pnorm(5, mean=8 ,sd=2)*100
cat(sprintf("A probabilidae que um atendimento dure menos de 5 minutos a %.2f\n"),d)

#b) E mais do que 9,5 minutos?

#lower.tail = FALSE para frente
d <-pnorm(9.5,mean=8, sd=2, lower.tail = FALSE)*100
d

#c) E entre 7 e 10 minutos?
d<-(pnorm(10, mean=8, sd=2) - pnorm(7, mean=8, sd=2))*100
d


#d)


#Exercicio 2
# A distribuição dos pesos dos coelhos criadas numa granja
# pode muito bem ser representada por uma distribuição Normal, com média,
# 5kg e desvio padrao 0,9kg. Uma abatedouro comprará 5000 coelhos
#e pretende classifica-los de acordo com o peso do seguinte modo
#15% dos mais leves como pequenos,os 50% seguintes como médios, os 20%
# seguintes como grandes e os 15% mqiw pesados como extras. Quais limites
# de pesso para cada classificação


help

#mean =5
#sd =0,9
#n=5000


d1 <- qnorm(0.15, 5,0.9)
d2 <- qnorm(0.65,5, 0.9)
d3 <- qnorm(0.85,5, 0.9)

#a = d1
#b = d1 e d2
#c = d2 e d3
#d = d3 

# respostas
# a) 15% pequenos tem ate 4,07
# b) 50% médios tem entre 4,07 e 5,35kg
# c) 20% grandes tem entre 5,35 e 5,93 kg
#d) 15% mais pesados tem mais de 5,93kg



#Exercicio 3
#Uma enchedora automática de refrigerantes está regulada para 
# que o volume médio de líquido em cada
#garrafa seja de 1000 cm3 e desvio padrão de 10 m3. 
#Admita que o volume siga uma distribuição normal.


#mean =1000 cm3
#sd=10m3


#(a) Qual é a porcentagem de garrafas em que o volume de líquido
#é menor que 990 cm3?

d <- pnorm(990, mean=1000, sd=10)*100
d


#(b) Qual é a porcentagem de garrafas em que o volume de líquido
#não se desvia da média em mais do que dois desvios padrões?

d1<- pnorm(980, 1000, sd=10)
d2<- pnorm(1020,1000,sd=10)
d3<- d2-d1
d3*100

#(c) Se 10 garrafas são selecionadas ao acaso, qual é a probabilidade
#de que, no máximo, 4 tenham
#volume de líquido superior a 1002 cm3?

#pnorm é a densidade ou seja a área
# pnimom é a probalidade de ocorrer

d <- 1 - pnorm(1002,1000,10)
d# uma distribuição binomial com probabilidade de sucesso

d1 <- pbinom(4,10,d)
d1#probabilidade




#(d)Se garrafas vão sendo selecionadas até aparecer uma com volume
#de líquido superior a 1005 cm3,
#qual é a probabilidade de que seja necessário selecionar pelo menos 
#5 garrafas?

d <- pnorm(1005, 1000, 10)
d

d1 <- pbinom(5,100,d)
d1#probabilidade








