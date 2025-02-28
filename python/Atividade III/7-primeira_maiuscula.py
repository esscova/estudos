def primeira_letra_maiuscula(frase):
     return frase.title()
    

if __name__ == '__main__':
    frase = input('\nDigite uma frase: \n').strip()

    print(f'frase original: {frase}')
    print(f'frase modificada: {primeira_letra_maiuscula(frase)}')