#...

def calcula_cedulas(valor:int) -> None:
  cedulas = [100, 50, 20, 10, 5]
  for cedula in cedulas:
    quantidade = valor // cedula
    valor %= cedula
    if quantidade > 0:
      print(f"{quantidade} cédula(s) de R${cedula}")

if __name__ == "__main__":
	try:
	  valor = int(input("Digite o valor do saque: "))
	  while valor <= 0:
	    valor = int(input("Digite um valor positivo: "))
	  calcula_cedulas(valor)
	except ValueError:
	  print("Erro inesperado, tente novamente.")

