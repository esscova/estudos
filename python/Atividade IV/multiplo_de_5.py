# ...

def multiplo_de_5(num) -> None:
  if num % 5 == 0:
    print(f"O número {num} é múltiplo de 5.")
  else:
    print(f"O número {num} não é múltiplo de 5.")
    
if  __name__ == "__main__":
    try:
      num = int(input("Digite um número: "))
      
      while num == 0:
        num = int(input("Digite um número diferente de 0: "))

      multiplo_de_5(num)

    except ValueError:
      print("Digite um número válido.")

    finally:
      print("Obrigado por usar o programa.")
