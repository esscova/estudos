# ...

def maior_numero() -> None:
  nums = [
      int(input(f"Digite o {i+1} número: ")) for i in range(2)
  ]
  print(f"O maior número é {max(nums)}.")
  
if __name__ == "__main__":
    maior_numero()
