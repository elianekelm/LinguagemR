# Estat�stica B�sica

# Parte 4 --> Tabela de Frequencia

setwd("C:/Users/elian/PowerBI/Cap12_LinguagemR")
getwd()

# Carregando os dados
dados <- read.table("Usuarios.csv", 
                  dec = ".",
                  sep = ",",
                  h = T,    #header = TRUE
                  fileEncoding = "windows-1252")

# Visualizando e sumarizando os dados
head(dados)
names(dados)
str(dados)
summary(dados$salario)
summary(dados$grau_instrucao)
mean(dados$salario)
mean(dados$grau_instrucao)


# TABELA DE FREQUENCIAS ABSOLUTAS
freq <- table(dados$grau_instrucao)
View(freq)


# TABELA DE FREQUENCIAS RELATIVAS
freq_rel <- prop.table(freq)
View(freq_rel)

# Porcentagem (100 * freq_rel_table)
p_freq_rel <- 100 * prop.table(freq_rel)
View(p_freq_rel)

# Adiciona linhas de TOTAL
View(freq)
freq <- c(freq, sum(freq))
View(freq)
names(freq)[4] <- "Total"
View(freq)


# TABELA FINAL COM TODOS OS VALORES

# Calculamos frequencia relativa e frequencia proporcional
freq_rel <- c(freq_rel, sum(freq_rel))
p_freq_rel <- c(p_freq_rel, sum(p_freq_rel))
View(p_freq_rel)


# Tabela final com todos os vetores
# fun��o cbind --> c de "coluna"; bind "liga��o" (faz a liga��o das colunas)
tabela_final <- cbind(freq,
                      freq_rel = round(freq_rel, digits = 2),
                      p_freq_rel = round(p_freq_rel, digits = 2))

View(tabela_final)
