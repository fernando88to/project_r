#!/usr/bin/env Rscript

#install.packages('tinytex')
# para gerar os relatórios em pdf no markdown tem que ser 
#sudo apt-get install texlive
# sudo apt install texlive-latex-extra

#export RSTUDIO_PANDOC=/usr/lib/rstudio/bin/pandoc
#tive que instalar esse pacote
#install.packages('tinytex')



#inicio da rotina
dados_registro_civil <- read.csv(file = '/home/fernando/mestrado/project_r/fgv/registro_civil_2017.csv', header = TRUE, sep = ",", quote = "\"")


#converte uma coluna em data
dados_registro_civil$DATA_ATO <- as.Date(dados_registro_civil$DATA_ATO, format="%d/%m/%Y")



total_nascimento = 0
total_natimorto = 0
total_obito = 0

#ncol(dados_registro_civil)

for(i in 1:nrow(dados_registro_civil)){
  if(dados_registro_civil$ATO[i]==2414){
    total_nascimento <- total_nascimento + 1
  }
  
  
  if(dados_registro_civil$ATO[i]==2413){
    total_natimorto <- total_natimorto + 1
  }
  
  if(dados_registro_civil$ATO[i]==2414){
    total_obito <- total_obito + 1
  }
}


M <- matrix(0:0, nrow=3, ncol=1, byrow = TRUE)
colnames(M) = c("Total")
rownames(M) <- c("Natirmoto", "Nascimento","Óbito")

#NATIRMTO
M[1,1]= total_natimorto
M[2,1]= total_nascimento
M[3,1]= total_obito



rmarkdown::render("/home/fernando/mestrado/project_r/projeto/relatoriomarkdown.Rmd", "pdf_document", output_file = paste('report.', Sys.Date(), '.pdf', sep=''), quiet = TRUE)

args = commandArgs(TRUE)

args
if (length(args)==0) {
 
} else if (length(args)==1) {
 args
}

                                                                                                                                      
