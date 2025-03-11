#...
def verifica_idade(idade) -> None:
  if idade >= 18:
    print("Você pode tirar a carteira de motorista.")
  else:
    print("Você ainda não pode tirar a carteira de motorista.")

if __name__ == "__main__":
	try:
	  idade = int(input("Digite sua idade: "))

	  while idade < 0:
	    idade = int(input("Digite uma idade válida: "))

	  verifica_idade(idade)

	except ValueError:
	  print("Digite uma idade válida.")
