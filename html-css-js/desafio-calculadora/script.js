let currentInput = '0';
let prevInput = '';
let operation = null;

function appendNumber(number) {
  if (currentInput === '0') {
    currentInput = number.toString();
  } else {
    currentInput += number.toString();
  }
  updateDisplay();
}

function setOperation(op) {
  if (operation !== null) return;
  prevInput = currentInput;
  currentInput = '0';
  operation = op;
}

function calculate() {
  if (operation === null) return;
  let result;
  switch (operation) {
    case '+':
      result = parseFloat(prevInput) + parseFloat(currentInput);
      break;
    case '-':
      result = parseFloat(prevInput) - parseFloat(currentInput);
      break;
    case '*':
      result = parseFloat(prevInput) * parseFloat(currentInput);
      break;
    case '/':
      if (currentInput === '0') {
        alert('Não é possível dividir por zero!');
        return;
      }
      result = parseFloat(prevInput) / parseFloat(currentInput);
      break;
  }
  currentInput = result.toString();
  operation = null;
  prevInput = '';
  updateDisplay();
}

function clearDisplay() {
  currentInput = '0';
  prevInput = '';
  operation = null;
  updateDisplay();
}

function updateDisplay() {
  document.getElementById('display').textContent = currentInput;
}
