# ...
def conferir_acesso(usuario:str, senha:str) -> None:
  if usuario == "admin" and senha == "1234":
    print("Login bem-sucedido")
  else:
    print("Usuário ou senha incorretos.")

if __name__ == "__main__":
	try:
	  tentativas = 3
	  while tentativas > 0:
	    usuario = input("Digite seu nome de usuário: ")
	    senha = input("Digite sua senha: ")
	    conferir_acesso(usuario, senha)
	    tentativas -= 1

	    if tentativas == 0:
	      print("Você atingiu o número máximo de tentativas.")
	      break

	except ValueError:
	  print("Digite um nome de usuário e senha válidos.")
