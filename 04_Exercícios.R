#   Exercícios Estatística Básica

setwd("C:/Users/elian/PowerBI/Cap12_LinguagemR")
getwd()

# Dataset contendo notas de diversos alunos em duas turmas diferentes.

notas <- read.csv("Notas.csv", fileEncoding = "windows-1252")
head(notas)

# .1: Apresente um resumo de tipos de dados e estatísticas do dataset.
str(notas)
summary(notas)

# .2: Qual a média de cada turma?
mean(notas$TurmaA)
mean(notas$TurmaB)

# .3: Qual turma apresentou maior variabilidade de notas? 
#     Justifique sua resposta. (VARIABILIDADE É O DESVIO PADRÃO)

sd(notas$TurmaA)
sd(notas$TurmaB) 
# Resposta: A TurmaA apresentou maior variabilidade de notas, pois em média
#           suas motas variaram 14 pontos para cima ou para baixo da média.
#           Já para a Turma B as notas estão 6 pontos acima ou abaixo da média.
          


# .4: Calcule o coeficiente de variação das 2 turmas.
# COEFICIENTE DE VARIAÇÃO = DESVIO PADRÃO / MEDIA
# A distribuição que tem o MENOR CV é a mais homogênea

cv_TurmaA <- sd(notas$TurmaA) / mean(notas$TurmaA)
print(cv_TurmaA)         

cv_TurmaB <- sd(notas$TurmaB) / mean(notas$TurmaB)
print(cv_TurmaB)


# .5: Qual nota apareceu mais vezes em cada turma?
# Moda
# Criando uma função
calculaModa <- function(v) {
  valor_unico <- unique(v)
  valor_unico[which.max(tabulate(match(v, valor_unico)))]
}

calculaModa(notas$TurmaA)
calculaModa(notas$TurmaB)
