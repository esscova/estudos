print('\n','--'*20, 'CONTADOR DE CARACTERES', '--'*20)
frase = input('\nDigite uma palavra: ').strip().lower()

while frase == '' or frase.isalpha() == False:
    print('\nDigite apenas letras.')
    frase = input('\nDigite uma palavra: ').strip().lower()

print(f'\nA palavra "{frase}" possui {len(frase)} caracteres.\n')

