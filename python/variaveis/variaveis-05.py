"""
Receba dois números do usuário e exiba a 
soma, subtração, multiplicação e divisão deles.
"""


num1 = float(input('digite o primeiro numero: ').replace(',','.'))
num2 = float(input('digite o segundo numero: ').replace(',', '.'))

soma = num1+num2
subtracao = num1-num2
produto=num1*num2
razao = num1 / num2 if num2>0 else 'Erro zero'

print(f'Soma de {num1} + {num2}: {soma}')
print(f'Subradação de {num1} - {num2}: {subtracao}')
print(f'Produto de {num1} x {num2}: {produto}')
print(f'Razão de {num1} / {num2}: {razao}')
