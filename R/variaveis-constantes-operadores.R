# 1. Crie duas variáveis: `a` e `b`. Atribua o valor 10 à variável `a` e o valor 20 à variável `b`. 
# Em seguida, calcule a soma de `a` e `b` e armazene o resultado em uma variável chamada `resultado`. Imprima o valor de `resultado`.

a <- 10
b <- 20
resultado <- a + b
print(resultado)

# 2. Defina duas variáveis constantes: `pi` com o valor 3.14 e `raio` com o valor 5. 
# Calcule a área de um círculo (`area = pi * raio^2`) e armazene o resultado em uma variável chamada `area_circulo`. Imprima o valor de `area_circulo`.

pi <- 3.14
raio <- 5
area_circulo <- pi * raio^2
print(area_circulo)
 
# 3. Crie uma variável `comprimento` com o valor 15 e uma variável `largura` com o valor 8. 
# Calcule a área de um retângulo (`area = comprimento * largura`) e 
# depois calcule o perímetro do retângulo (`perimetro = 2 * (comprimento + largura)`). Imprima os valores de `area` e `perimetro`.

comprimento <- 15
largura <- 8
area <- comprimento * largura
perimetro <- 2 * (comprimento + largura)
print(area)
print(perimetro)

# 4. Defina duas variáveis `x` e `y` com os valores 5 e 10, respectivamente.
# Verifique se `x` é maior que `y` e se `x` é menor ou igual a `y`.
# Imprima os resultados dessas comparações usando operadores lógicos.

x <- 5
y <- 10
resultado1 <- x>y
resultado2 <- x<=y

print(resultado1)
print(resultado2)

# 5. Crie três variáveis: `nota1`, `nota2` e `nota3`, com os valores 7, 8 e 6, respectivamente.
# Calcule a média dessas notas e armazene o resultado em uma variável chamada `media`. Imprima o valor de `media`.

nota1 <- 7
nota2 <- 8
nota3 <- 6
media <- (nota1+nota2+nota3)/3
print(media)
