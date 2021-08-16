# Estatística Básica

# Parte 3 --> Medidas de Posição Relativa -- 


# Definindo a pasta de trabalho
setwd("C:/Users/elian/PowerBI/Cap12_LinguagemR")
# Confirmando o diretório
getwd()

# Carregando o Dataset
vendas <- read.csv("Vendas.csv", fileEncoding = "windows-1252")

# Resumo dos Dados
head(vendas)
tail(vendas)
View(vendas)

# Medidas de Tendência Central
summary(vendas$Valor)
# [] faz uma varredura na tabela (notação de filtro) e a letra 'c'
# é uma função que cria um vetor de strings
summary(vendas[c('Valor', 'Custo')])

# Explorando variáveis numéricas
mean(vendas$Valor)
median(vendas$Valor)
quantile(vendas$Valor)
quantile(vendas$Valor, probs = c(0.01, 0.99))
quantile(vendas$Valor, seq(from=0, to = 1, by = 0.20))
IQR(vendas$Valor) # Diferença entre o Q3 e o Q1
range(vendas$Valor) # 1° e último valor do intervalo
summary(vendas$Valor)
diff(range(vendas$Valor))
