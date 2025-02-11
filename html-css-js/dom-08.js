const render = document.getElementById('render');

const componente = document.createElement('div');
componente.className = 'cardComponent';

const labelMinimo = document.createElement('label');
labelMinimo.textContent = 'Valor mínimo: ';
const inputMinimo = document.createElement('input');
inputMinimo.type = 'number';
inputMinimo.value ='0';

const labelMaximo = document.createElement('label');
labelMaximo.textContent = 'Valor máximo: ';
const inputMaximo = document.createElement('input');
inputMaximo.type = 'number';
inputMaximo.value = '100';

const btnContar = document.createElement('button');
btnContar.textContent = 'Contar'

componente.appendChild(labelMinimo);
componente.appendChild(inputMinimo);
componente.appendChild(labelMaximo);
componente.appendChild(inputMaximo);
componente.appendChild(btnContar)

render.appendChild(componente);

btnContar.addEventListener('click', () => {
    if (inputMinimo.value === '' || inputMaximo.value === '') { //vazio?
        alert('Por favor, insira ambos os valores!');
        return;
    }
    
    const minimo = parseInt(inputMinimo.value);
    const maximo = parseInt(inputMaximo.value);


    if (minimo >= maximo) {
        alert('O valor mínimo deve ser menor que o valor máximo!');
        return;
    }

    let count = 0;
    for(let i = minimo; i<= maximo; i++){ // compare e conte
        if(i % 2 === 0 && i % 3 === 0){
            count++;
        }
    }

    const resultParagraph = document.createElement('p');
    resultParagraph.textContent = `Existem ${count} números múltiplos de 2 e 3 no interavalo de [${minimo} - ${maximo}]`
    document.body.appendChild(resultParagraph);
});