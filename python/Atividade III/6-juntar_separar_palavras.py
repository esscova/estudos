# juntar e separar palavras
# ...

def separar_palavras(frase):
    return frase.split()

def juntar_palavras(palavras):
    return '-'.join(palavras)

if __name__ == '__main__':
    frase = input('Digite uma frase: ').strip()

    palavras = separar_palavras(frase)  

    print(f'Frase original: {frase}')
    print(f'Palavras separadas: {palavras}')
    print(f'Frase com hífens: {juntar_palavras(palavras)}')
