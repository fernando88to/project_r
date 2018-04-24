#2414 - nascimento

#leitura dos dados
dados_registro_civil <- read.csv(file = '/home/fernando/mestrado/project_r/fgv/registro_civil_2017.csv', header = TRUE, sep = ",", quote = "\"")


#converte uma coluna em data
dados_registro_civil$DATA_ATO <- as.Date(dados_registro_civil$DATA_ATO, format="%d/%m/%Y")



total_nascimento = 0
#ncol(dados_registro_civil)

for(i in 1:nrow(dados_registro_civil)){
  if(dados_registro_civil$ATO[i]==2414){
    total_nascimento <- total_nascimento + 1
  }
  
}

total_nascimento

