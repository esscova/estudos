 Desafios

## Cartão de Visita Interativo
Crie uma página simples de "Cartão de Visita" interativo utilizando HTML, CSS e JavaScript. O objetivo é que o cartão contenha informações básicas de um perfil, como nome, profissão e uma foto. Além disso, ao passar o mouse sobre a foto, ela deve aumentar de tamanho de forma suave, e ao clicar no nome do usuário, o cartão deve alterar a cor de fundo.

	Requisitos:

	1. HTML:
	    -   Crie uma estrutura de página com um cartão de visita.
	    -   O cartão deve conter:
	        -   Uma foto (imagem) do perfil (você pode usar uma imagem qualquer).
	        -   O nome do usuário.
	        -   A profissão do usuário.
	2. CSS:
	    -   O cartão deve ter um estilo básico, com bordas arredondadas, sombra e um fundo suave.
	    -   O nome do usuário deve estar em destaque (ex: em negrito e maior que o texto da profissão).
	    -   A foto deve ter um efeito de "zoom" (aumento suave) ao passar o mouse sobre ela.
	3. JavaScript:
	    -   Ao clicar no nome do usuário, a cor de fundo do cartão deve mudar para uma cor aleatória.
	4. Responsividade:
	    -   O cartão de visita deve ser responsivo, ajustando-se corretamente para telas pequenas (como dispositivos móveis).

	Instruções:
	-   O desafio deve ser feito usando HTML, CSS e JS.
	-   Não é necessário usar frameworks externos (como Bootstrap ou jQuery), apenas recursos nativos dessas linguagens.
	-   A lógica para alterar a cor de fundo pode ser feita por meio de um evento de clique.

## Contador Interativo

Crie uma aplicação simples de contador utilizando HTML, CSS e JavaScript. A página deve ter um contador que começa em zero e permite ao usuário aumentar, diminuir ou resetar o valor exibido através de botões interativos.

	Requisitos:

	1. HTML:
	    -   Crie uma estrutura de página com o título "Contador".
	    -   Exiba o valor do contador em um elemento HTML.
	    -   Adicione três botões:
	        -   "Aumentar": para incrementar o valor do contador.
	        -   "Diminuir": para decrementar o valor do contador.
	        -   "Resetar": para resetar o contador para zero.
	2. CSS:	    
	    -   O layout deve ser simples, mas agradável, centralizando o contador e os botões na tela.
	    -   Adicione um estilo básico aos botões para que fiquem visualmente distintos, com cores que indiquem a função de cada um (ex: verde para aumentar, vermelho para diminuir e azul para resetar).
	3. JavaScript:	    
	    -   O contador deve começar com o valor 0.
	    -   Ao clicar nos botões "Aumentar" e "Diminuir", o valor do contador deve ser alterado adequadamente.
	    -   O botão "Resetar" deve restaurar o contador para o valor inicial (0).
	    -   O valor do contador deve ser atualizado dinamicamente no HTML conforme as interações.
	4. Funções:	    
	    -   Aumentar: incrementa o valor do contador em 1.
	    -   Diminuir: decrementa o valor do contador em 1, sem deixar o valor ser menor que 0.
	    -   Resetar: zera o contador.

	Desafio adicional:
	-   Implemente uma animação no contador que destaque a mudança de valor (ex: cor de fundo piscando ou aumento rápido de tamanho).
	-   Torne os botões interativos e agradáveis, alterando sua cor ou estilo quando o mouse passar sobre eles.

## Calculadora Interativa
Crie uma calculadora simples e interativa utilizando HTML, CSS e JavaScript. A calculadora deve permitir ao usuário realizar operações básicas como soma, subtração, multiplicação e divisão. Ela deve ter uma interface de usuário limpa e funcional, com botões para os números e operadores, além de um visor que exibe os resultados das operações.

	Requisitos:

	1. HTML:
	    -   Crie a estrutura da calculadora com um visor para exibir os números e resultados.
	    -   Adicione os botões numéricos de 0 a 9.
	    -   Adicione botões para as operações básicas: soma (+), subtração (-), multiplicação (*) e divisão (/).
	    -   Adicione um botão para limpar o visor (C) e um botão para calcular o resultado (=).
	2. CSS:	    
	    -   A interface da calculadora deve ser simples, com os botões bem distribuídos em uma grade.
	    -   O visor deve ter um estilo distinto para destacar os resultados.
	    -   Os botões devem ter uma aparência agradável e devem mudar de cor ou estilo ao serem pressionados.
	    -   Adicione uma borda ao redor da calculadora para destacá-la na tela.
	3. JavaScript:
	    -   O visor deve exibir o número ou o resultado das operações em tempo real.
	    -   Ao pressionar os números, eles devem ser exibidos no visor.
	    -   Ao pressionar os operadores (+, -, *, /), a operação correspondente deve ser armazenada e o visor deve exibir o número atual para que o usuário continue a operação.
	    -   O botão "C" deve limpar o visor e reiniciar a calculadora.
	    -   O botão "=" deve calcular o resultado da operação e exibir o valor final no visor.
	    -   As operações devem ser feitas de forma dinâmica, sem a necessidade de recarregar a página.
	4. Funcionalidades:	    
	    -   Implementação das operações básicas de uma calculadora: soma, subtração, multiplicação e divisão.
	    -   O visor deve iniciar com o valor "0".
	    -   Quando o botão de calcular (=) for pressionado, o valor final da operação deve ser exibido.
	    -   A calculadora deve ser capaz de realizar operações sequenciais, ou seja, somar, subtrair, multiplicar ou dividir vários números sem precisar reiniciar a operação.

	Desafio adicional:
	-   Adicione um estilo que faça a calculadora responsiva para que ela se ajuste em telas menores, como dispositivos móveis.
	-   Implemente um recurso para que o visor mostre um número com casas decimais, quando necessário.

## Lista de Tarefas Interativa

Crie uma aplicação de **Lista de Tarefas** utilizando **HTML**, **CSS** e **JavaScript**. A aplicação deve permitir ao usuário adicionar tarefas, marcar como concluídas, e visualizar tarefas com base em seu status (pendente ou concluída). Além disso, o usuário deve poder filtrar as tarefas para visualizar todas, as concluídas ou as pendentes.

	Requisitos:

	1. HTML:	    
	    -   Crie um campo de entrada (input) onde o usuário possa digitar uma nova tarefa.
	    -   Adicione um botão que permita adicionar a tarefa digitada à lista de tarefas.
	    -   Exiba as tarefas em uma lista (`<ul>`) com itens (`<li>`).
	    -   Adicione três botões para filtrar as tarefas:
	        -   "Todas": exibe todas as tarefas (pendentes e concluídas).
	        -   "Concluídas": exibe apenas as tarefas marcadas como concluídas.
	        -   "Pendentes": exibe apenas as tarefas ainda não concluídas.
	2. CSS:	    
	    -   O layout da lista de tarefas deve ser simples, com uma estrutura clara para exibição das tarefas e filtros.
	    -   Cada tarefa deve ser apresentada com uma caixa de seleção (checkbox) para marcar a tarefa como concluída.
	    -   As tarefas concluídas devem ser estilizadas de forma diferente (ex: texto riscado ou uma cor diferente).
	    -   A interface deve ser responsiva, ajustando-se corretamente para dispositivos móveis.
	3.  JavaScript:	    
	    -   Ao digitar uma tarefa e clicar no botão "Adicionar", a tarefa deve ser adicionada à lista.
	    -   Cada tarefa deve ter um checkbox, que, ao ser marcado, altera seu status para "concluída".
	    -   Ao clicar no botão de filtro ("Todas", "Concluídas", "Pendentes"), as tarefas devem ser filtradas corretamente com base no status (pendente ou concluída).
	    -   As tarefas devem ser salvas de forma temporária, para que, ao atualizar a página, as tarefas ainda apareçam (pode-se usar armazenamento local ou outras formas simples de persistência).
	4. Funcionalidades:
	    -   Marcar e desmarcar tarefas como concluídas.
	    -   Filtrar as tarefas de acordo com seu status (concluídas, pendentes, todas).
	    -   Adicionar novas tarefas à lista.

	Desafio adicional:
	-   Implemente um recurso para que o usuário possa excluir tarefas da lista.
	-   Armazene as tarefas no localStorage do navegador para que a lista seja mantida mesmo após a atualização da página.
