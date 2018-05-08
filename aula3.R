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

#n=10 , p=0,5 k =3,4,5

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