def ordena_numeros(num:list) -> list:
  return sorted(num)

if __name__ == "__main__":
	try:
	  nums = [
	      int(input(f"Digite o {i+1} número: ")) for i in range(3)
	  ]
	  print(f"Os números em ordem crescente são: {ordena_numeros(nums)}")

	except ValueError:
	  print
