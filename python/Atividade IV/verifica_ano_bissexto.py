# ...
def verifica_ano_bissexto(ano) -> None:
  if ano % 4 == 0 and (ano % 100 != 0 or ano % 400 == 0):
    print(f"O ano {ano} é bissexto.")
  else:
    print(f"O ano {ano} não é bissexto.")

if __name__ == "__main__":
	try:
	  ano = int(input("Digite um ano: "))

	  while ano < 0:
	    ano = int(input("Digite um ano válido: "))

	  verifica_ano_bissexto(ano)
	except ValueError:
	    print("Entrada inválida. Digite um número inteiro.")
