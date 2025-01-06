
num1 = int(input('Digite o primeiro número: '))
num2 = int(input('Digite o segundo número: '))

maior = num1 if num1>num2 else num2
iguais = "números iguais" if num1 == num2 else None

if maior and not iguais:
	print(f'Número maior: {maior}')
else:
	print(iguais)
