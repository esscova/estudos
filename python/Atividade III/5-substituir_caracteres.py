# ...

def substituir_caracteres(string):
    caractere_antigo = input('Digite o caractere antigo: ')
    caractere_novo = input('Digite o caractere novo: ')
    return string.replace(caractere_antigo, caractere_novo)

if __name__ == '__main__':
    string = input('Digite uma string: ').strip()

    print(f'String original: {string}')
    print(f'String modificada: {substituir_caracteres(string)}')