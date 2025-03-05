# ...
def verificar_par_impar(num: int) -> str:
    if num % 2 == 0:
        return f"O número {num} é par."
    else:
        return f"O número {num} é ímpar."

if __name__ == "__main__":
    try:
        num = int(input("\nDigite um número: ")) 
        print(verificar_par_impar(num)) 
    
    except ValueError:  
        print("Por favor, digite um número inteiro válido.")

    finally:
        print("\nFim do programa.")
