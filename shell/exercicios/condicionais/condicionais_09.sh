#!/usr/bin/env bash

# Escreva um script que compare duas strings armazenadas em variáveis e informe se são iguais ou diferentes.

var1='texto'
var2='texto'

test $var1 = $var2 && echo 'As strings são iguais' || echo 'As strings são diferentes'
