# ...

def classifica_triangulo(lado1:float, lado2:float, lado3:float) -> None:
  if lado1 == lado2 == lado3:
    print("Triângulo equilátero")
  elif lado1 == lado2 or lado1 == lado3 or lado2 == lado3:
    print("Triângulo isósceles")
  else:
    print("Triângulo escaleno")

if __name__ == "__main__":
    try:
      lado1 = float(input("Digite o primeiro lado do triângulo: "))
      lado2 = float(input("Digite o segundo lado do triângulo: "))
      lado3 = float(input("Digite o terceiro lado do triângulo: "))

      classifica_triangulo(lado1, lado2, lado3)

    except ValueError:
      print("Digite um número válido.")
