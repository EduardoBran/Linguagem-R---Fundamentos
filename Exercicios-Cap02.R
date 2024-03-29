# Lista de Exercícios - Capítulo 2

# Obs: Caso tenha problemas com a acentuação, consulte este link:
# https://support.rstudio.com/hc/en-us/articles/200532197-Character-Encoding

# Configurando o diretório de trabalho
# Coloque entre aspas o diretório de trabalho que você está usando no seu computador
# Não use diretórios com espaço no nome
setwd("C:/Users/Julia/Desktop/CienciaDeDados/1.Big-Data-Analytics-com-R-e-Microsoft-Azure-Machine-Learning/2.Fundamentos-da-Linguagem-R")
getwd()

# Exerc�cio 1 - Crie um vetor com 30 n�meros inteiros

# Exerc�cio 2 - Crie uma matriz com 4 linhas e 4 colunas preenchida com n�meros inteiros

# Exerc�cio 3 - Crie uma lista unindo o vetor e matriz criados anteriormente

# Exerc�cio 4 - Usando a fun��o read.table() leia o arquivo do link abaixo para uma dataframe
# http://data.princeton.edu/wws509/datasets/effort.dat

# Exerc�cio 5 - Transforme o dataframe anterior, em um dataframe nomeado com os seguintes labels:
# c("config", "esfc", "chang")

# Exerc�cio 6 - Imprima na tela o dataframe iris, verifique quantas dimens�es existem no dataframe iris e
# imprima um resumo do dataset

# Exerc�cio 7 - Crie um plot simples usando as duas primeiras colunas do dataframe iris

# Exerc�cio 8 - Usando a função subset, crie um novo dataframe com o conjunto de dados do dataframe iris
# em que Sepal.Length > 7
# Dica: consulte o help para aprender como usar a função subset()

# Exerc�cio 9 (Desafio) - Crie um dataframe que seja cópia do dataframe iris e usando a fun��o slice(),
# divida o dataframe em um subset de 15 linhas
# Dica 1: Voc� vai ter que instalar e carregar o pacote dplyr
# Dica 2: Consulte o help para aprender como usar a fun��o slice()

# Exerc�cio 10 - Use a fun��o filter no seu novo dataframe criado no item anterior e retorne apenas
# valores em que Sepal.Length > 6
# Dica: Use o RSiteSearch para aprender como usar a função filter




# ---------------------------------------------------------------------------------------------------------


# Exerc�cio 1 - Crie um vetor com 30 n�meros inteiros

vet_ex1 <- c(1:30)
vet_ex1

vet2_ex1 <- seq(1:30)
vet2_ex1

class(vet_ex1)
is.vector(vet_ex1)
class(vet2_ex1)
is.vector(vet2_ex1)

# ---------------------------------------------------------------------------------------------------------


# Exerc�cio 2 - Crie uma matriz com 4 linhas e 4 colunas preenchida com n�meros inteiros

matriz_ex2 = matrix(c(1:16), nr = 4, nc = 4)
matriz_ex2

matriz2_ex2 = matrix(c(1:16), nr = 4, nc = 4, byrow = T)
matriz2_ex2

# ---------------------------------------------------------------------------------------------------------


# Exerc�cio 3 - Crie uma lista unindo o vetor e matriz criados anteriormente

lista_ex3 = list(vet_ex1, matriz_ex2)
lista_ex3

# ---------------------------------------------------------------------------------------------------------


# Exerc�cio 4 - Usando a fun��o read.table() leia o arquivo do link abaixo para uma dataframe
# http://data.princeton.edu/wws509/datasets/effort.dat

df_ex4 <- data.frame(read.table('https://grodri.github.io/datasets/effort.dat'))
df_ex4

class(df_ex4)

# Exerc�cio 5 - Transforme o dataframe anterior, em um dataframe nomeado com os seguintes labels:
# c("config", "esfc", "chang")

names(df_ex4) = c('config', 'esfc', 'chang')
df_ex4

# ---------------------------------------------------------------------------------------------------------


# Exerc�cio 6 - Imprima na tela o dataframe iris,
# verifique quantas dimens�es existem no dataframe iris e imprima um resumo do dataset

iris
View(iris)

dim(iris)
summary(iris) # resumo estat�stico
str(iris) # resumo de cada tipo de dado

# ---------------------------------------------------------------------------------------------------------


# Exerc�cio 7 - Crie um plot simples usando as duas primeiras colunas do dataframe iris
# plot = gr�fico simples

plot(iris$Sepal.Length, iris$Sepal.Width)

# ---------------------------------------------------------------------------------------------------------


# Exerc�cio 8 - Usando a fun��o subset, crie um novo dataframe com o conjunto de dados do dataframe iris
# em que Sepal.Length > 7
# Dica: consulte o help para aprender como usar a fun��o subset()

?subset

df_ex8 <- subset(iris, Sepal.Length > 7)

View(df_ex8)

# ---------------------------------------------------------------------------------------------------------


# Exerc�cio 9 (Desafio) - Crie um dataframe que seja c�pia do dataframe iris e usando a fun��o slice(),
# divida o dataframe em um subset de 15 linhas
# Dica 1: Voc� vai ter que instalar e carregar o pacote dplyr
# Dica 2: Consulte o help para aprender como usar a fun��o slice()

install.packages('dplyr')

library(dplyr)

?slice

df_ex9 = iris %>% slice_sample(n = 15) # retorna 15 linhas aleat�rias
df_ex9

View(df_ex9)


# solu��o professor (correta, retorna as primerias 15 linhas)

novo_iris <- iris

novo_iris = slice(novo_iris, 1:15)
novo_iris

# ---------------------------------------------------------------------------------------------------------


# Exerc�cio 10 - Use a fun��o filter no seu novo dataframe criado no item anterior e retorne apenas
# valores em que Sepal.Length > 6
# Dica: Use o RSiteSearch para aprender como usar a fun��o filter

RSiteSearch('filter')

filter(df_ex9, Sepal.Length > 6)
View(filter(df_ex9, Sepal.Length > 6))

filter(novo_iris, Sepal.Length < 6)
View(filter(novo_iris, Sepal.Length < 6))
