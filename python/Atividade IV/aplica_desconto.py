# ...

def aplicar_desconto(valor:float) -> float:
  if valor > 1000:
    return valor * 0.9
  else:
    return valor * 0.95

if __name__ == "__main__":
    try:
      valor = float(input("Digite o valor da compra: ").replace(",", "."))
      print(f"Valor com desconto: R${aplicar_desconto(valor):.2f}")
    except ValueError:
      print("Digite um valor válido.")
