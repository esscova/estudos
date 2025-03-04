# ...

def substituir_vogais(string):
    vogais = 'aeiouAEIOU'
    for vogal in vogais:
        string = string.replace(vogal, '*')
    return string
    
if __name__ == "__main__":
    palavra = input("Digite uma palavra: ").strip()
    print(f'\nPalavra original: {palavra}')
    print(f'\nPalavra modificada: {substituir_vogais(palavra)}\n')
