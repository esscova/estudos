# ...
def verifica_nota(nota) -> None:
  if nota >= 7:
    print("O aluno está aprovado.")
  elif nota >= 5:
    print("O aluno está em recuperação.")
  else:
    print("O aluno está reprovado.")
  
if __name__ == "__main__":
	try:
	  nota = float(input("Digite a nota do aluno: "))

	  while nota < 0 or nota > 10:
	    nota = float(input("Digite uma nota válida: "))

	  verifica_nota(nota)

	except ValueError:
	  print("Digite uma nota válida.")

	finally:
	  print("Finalizando o programa.")
