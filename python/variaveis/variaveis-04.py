"""
Receba duas palavras do usuário e una-as em uma única frase.
"""

nome = input('Primeiro nome: ')
sobrenome = input('Sobrenome: ')

print(f'{nome} {sobrenome}'[::-1])
