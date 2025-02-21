# 
print('\n','*'*20, 'Inversor de Strings', '*'*20)

def inverte_strings (string) -> str:
	return string.strip()[::-1]

palavra = inverte_strings(input('\nDigite a palavra a ser invertida: '))
print(f'Inverso: {palavra} \n')
