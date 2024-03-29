# Tipos B�sicos de Dados em R

# Configurando Diret�rio de Trabalho
setwd("C:/Users/Julia/Desktop/CienciaDeDados/1.Big-Data-Analytics-com-R-e-Microsoft-Azure-Machine-Learning/2.Fundamentos-da-Linguagem-R")
getwd()


# Numeric - Todos os n�meros criados em R s�o do modo numeric
# S�o armazenados como n�meros decimais (double)

num1 <- 7
num1

class(num1)
mode(num1)
typeof(num1)

num2 = 16.82
num2

mode(num2)
typeof(num2)


# Integer
# Convertemos tipos numeric para integer

is.integer(num2)

y = as.integer(num2) # converte num2 em integer
y
class(y)
mode(y) # modo de armzenamento
typeof(y)

as.integer('3.17') # consegue converter para numero mesmo estando dentro de ""
as.integer("Joe")
as.integer('Joe')
as.integer(TRUE)
as.integer(FALSE)
as.integer('TRUE')


# Character

char1 = 'A'
char1
mode(char1)
typeof(char1)

char2 = 'cientista'
char2
mode(char2)
typeof(char2)

char3 = c("Data", "Scicence", "Academy")
char3
mode(char3)
typeof(char3)


# Complex (tipo complexo - numero que podemos utilizar uma unidade imagin�ria representado pela letra i)

compl = 2.5 + 4i
compl
mode(compl)
typeof(compl)

sqrt(-1)
sqrt(-1+0i)
sqrt(as.complex(-1))
sqrt(as.complex(-2))


# Logic (guardando resultado l�gico em uma vari�vel)

x = 1; y = 2
z = x > y
z
class(z)

u = TRUE; v = FALSE
class(u)
u & v
u | v
!u


# Opera��es com 0

5 / 0
0 / 5


# Erro
'Joe' / 5
