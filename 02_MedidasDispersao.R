# Estat�stica B�sica

# Parte 2 --> Medidas de Dispers�o -- VARI�NCIA e DESVIO PADR�O --

# Definindo a pasta de trabalho
setwd("C:/Users/elian/PowerBI/Cap12_LinguagemR")
getwd()

# Carregando o Dataset
vendas <- read.csv("Vendas.csv", fileEncoding = "windows-1252")

# Resumo do Dataset
View(vendas)
str(vendas)
summary(vendas$Valor)

# Vari�ncia
var(vendas$Valor)

# Desvio Pad�o
sd(vendas$Valor)
