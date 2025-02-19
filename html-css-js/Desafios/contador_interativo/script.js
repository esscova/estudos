document.addEventListener('DOMContentLoaded', () => {
    const counterValue = document.getElementById('counterValue');
    const decreaseBtn = document.getElementById('decreaseBtn');
    const resetBtn = document.getElementById('resetBtn');
    const increaseBtn = document.getElementById('increaseBtn');

    let count = 0;

    function updateCounter() {
        counterValue.textContent = count;
    }

    decreaseBtn.addEventListener('click', () => {
        count--;
        updateCounter();
    });

    resetBtn.addEventListener('click', () => {
        count = 0;
        updateCounter();
    });

    increaseBtn.addEventListener('click', () => {
        count++;
        updateCounter();
    }); 

    updateCounter();
});