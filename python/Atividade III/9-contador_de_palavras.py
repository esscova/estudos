# ...

def contador_de_palavras(frase):
    return len(frase.split())

if __name__ == '__main__':
    frase = input('\nDigite uma frase: ').strip()

    print(f'\nFrase original: {frase}')
    print(f'Quantidade de palavras: {contador_de_palavras(frase)}\n')