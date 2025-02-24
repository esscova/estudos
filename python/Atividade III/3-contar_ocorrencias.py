#...

print("\n","=-"*10, "Contador de Ocorrências", "=-"*10)

palavra = input("\n\nDigite uma palavra: ").lower().strip()
letra = input("Digite a letra:").lower().strip()

contador = 0

for i in palavra:
	if letra == i:
		contador+= 1

if contador: 
	print(f'A letra "{letra}" aparece {contador} vez(es) na palavra "{palavra}"\n')
else:
	print(f'A letra "{letra}" nao aparece na palavra "{palavra}"\n')