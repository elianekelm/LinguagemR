# Estat�stica B�sica

# Parte 3 --> Medidas de Posi��o Relativa -- 


# Definindo a pasta de trabalho
setwd("C:/Users/elian/PowerBI/Cap12_LinguagemR")
# Confirmando o diret�rio
getwd()

# Carregando o Dataset
vendas <- read.csv("Vendas.csv", fileEncoding = "windows-1252")

# Resumo dos Dados
head(vendas)
tail(vendas)
View(vendas)

# Medidas de Tend�ncia Central
summary(vendas$Valor)
# [] faz uma varredura na tabela (nota��o de filtro) e a letra 'c'
# � uma fun��o que cria um vetor de strings
summary(vendas[c('Valor', 'Custo')])

# Explorando vari�veis num�ricas
mean(vendas$Valor)
median(vendas$Valor)
quantile(vendas$Valor)
quantile(vendas$Valor, probs = c(0.01, 0.99))
quantile(vendas$Valor, seq(from=0, to = 1, by = 0.20))
IQR(vendas$Valor) # Diferen�a entre o Q3 e o Q1
range(vendas$Valor) # 1� e �ltimo valor do intervalo
summary(vendas$Valor)
diff(range(vendas$Valor))
