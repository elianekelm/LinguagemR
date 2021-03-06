#   Exerc�cios Estat�stica B�sica

setwd("C:/Users/elian/PowerBI/Cap12_LinguagemR")
getwd()

# Dataset contendo notas de diversos alunos em duas turmas diferentes.

notas <- read.csv("Notas.csv", fileEncoding = "windows-1252")
head(notas)

# .1: Apresente um resumo de tipos de dados e estat�sticas do dataset.
str(notas)
summary(notas)

# .2: Qual a m�dia de cada turma?
mean(notas$TurmaA)
mean(notas$TurmaB)

# .3: Qual turma apresentou maior variabilidade de notas? 
#     Justifique sua resposta. (VARIABILIDADE � O DESVIO PADR�O)

sd(notas$TurmaA)
sd(notas$TurmaB) 
# Resposta: A TurmaA apresentou maior variabilidade de notas, pois em m�dia
#           suas motas variaram 14 pontos para cima ou para baixo da m�dia.
#           J� para a Turma B as notas est�o 6 pontos acima ou abaixo da m�dia.
          


# .4: Calcule o coeficiente de varia��o das 2 turmas.
# COEFICIENTE DE VARIA��O = DESVIO PADR�O / MEDIA
# A distribui��o que tem o MENOR CV � a mais homog�nea

cv_TurmaA <- sd(notas$TurmaA) / mean(notas$TurmaA)
print(cv_TurmaA)         

cv_TurmaB <- sd(notas$TurmaB) / mean(notas$TurmaB)
print(cv_TurmaB)


# .5: Qual nota apareceu mais vezes em cada turma?
# Moda
# Criando uma fun��o
calculaModa <- function(v) {
  valor_unico <- unique(v)
  valor_unico[which.max(tabulate(match(v, valor_unico)))]
}

calculaModa(notas$TurmaA)
calculaModa(notas$TurmaB)
