# ...

def remover_espacos_extras(string):
    return string.strip()

if __name__ == '__main__':
    string = input('Digite uma frase: ')

    print(f'String original: {string}')
    print(f'String modificada: {remover_espacos_extras(string)}')