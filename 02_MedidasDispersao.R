# Estatística Básica

# Parte 2 --> Medidas de Dispersão -- VARIÂNCIA e DESVIO PADRÃO --

# Definindo a pasta de trabalho
setwd("C:/Users/elian/PowerBI/Cap12_LinguagemR")
getwd()

# Carregando o Dataset
vendas <- read.csv("Vendas.csv", fileEncoding = "windows-1252")

# Resumo do Dataset
View(vendas)
str(vendas)
summary(vendas$Valor)

# Variância
var(vendas$Valor)

# Desvio Padão
sd(vendas$Valor)
