# ...
print("\n","=-"*10, "Verificador de Palíndromos", "=-"*10)

palavra = input("\nDigite uma palavra: ").lower().strip()

while palavra.isalpha() == False:
    print('\nDigite apenas letras.')
    palavra = input('\nDigite uma palavra: ').strip().lower()

if palavra == palavra[::-1]:
    print(f'A palavra "{palavra}" eh palindroma\n')
else:
    print(f'A palavra "{palavra}" nao eh palindroma\n')