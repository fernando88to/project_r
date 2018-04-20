#leitura dos dados
dados_registro_civil <- read.csv(file = 'registro_civil_2017.csv', header = TRUE, sep = ",", quote = "\"")


#converte uma coluna em data
dados_registro_civil$DATA_ATO <- as.Date(dados_registro_civil$DATA_ATO, format="%d/%m/%Y")

